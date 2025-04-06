---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.1.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaVFS.cpp
---
---@meta

---The Virtual File System is an unified layer to access (read-only) the
---different archives used at runtime. So you can access map, game & config
---files via the same interface.
---
---## Overview
---
---Although Spring can access the filesystem directly (via os module) it is
---more common that you would want to access files included with your game or
---Spring. Trouble is, most of these files are compressed into archives
---(`.sdz`/`.sd7`) so random access would generally be a difficult procedure.
---Fortunately, the Spring Lua system automatically provides access to mod and
---base files via the VFS module.
---
---The VFS module doesn't simply open archives though. What it does is map
---your game files, game dependencies and Spring content onto a virtual file
---tree. All archives start from the 'roots' of the tree and share the same
---virtual space, meaning that if two or more archives contain the same
---resource file name the resources overlap and only one of the files will be
---retrieved. Overlapping directories on the other hand are merged so the
---resulting virtual directory contains the contents of both. Here is an
---example of how this works:
---
---**Archive 1** (`games/mygame.sd7`)
---
---```
---textures
---└── texture1.png
---models
---└── model1.mdl
---```
---
---**Archive 2** (`base/springcontent.sdz`)
---
---```
---textures
---├── texture1.png
---├── texture2.png
---└── texture3.png
---```
---
---**VFS**
---
---```
---textures
---├── texture1.png
---├── texture2.png
---└── texture3.png
---models
---└── model1.mdl
---```
---
---This raises the question: If both archives have a `texture1.png` then which
---`texture1.png` is retreived via the VFS? The answer depends on the order the
---archives are loaded and the VFS mode (more on modes below). Generally
---however, each archive loaded overrides any archives loaded before it. The
---standard order of loading (from first to last) is:
---
--- 1. The main `Spring/` game directory.
--- 2. The automatic dependencies `springcontent.sdz` and `maphelper.sdz`.
--- 3. Dependencies listed in your `modinfo.lua` (or `modinfo.tdf`), in the order listed.
--- 4. Your mod archive.
---
---## Paths
---
---Spring's VFS is **lowercase only**. Also it is **strongly** recommended to
---use linux style path separators, e.g. `"foo/bar.txt"` and not `"foo\bar.txt"`.
---
---## Engine read files
---
---The engine access a few files directly, most of them are lua files which
---access other files themselves. Here the list of files that must exist in the
---VFS (some of them don't have to be in the game/map archive cause there are
---fallback solutions in `springcontent.sdz` & `maphelper.sdz`):
---
---- `./`
---  - anims/
---    - `cursornormal.bmp/png`
---  - gamedata/
---    - `defs.lua`
---    - `explosions.lua`
---    - `explosion_alias.lua`
---    - `icontypes.lua`
---    - `messages.lua`
---    - `modrules.lua`
---    - `resources.lua`
---    - `resources_map.lua`
---    - `sidedata.lua`
---    - `sounds.lua`
---  - `luagaia/`
---    - `main.lua`
---    - `draw.lua`
---  - `luarules/`
---    - `main.lua`
---    - `draw.lua`
---  - `luaui/`
---    - `main.lua`
---  - `shaders/`
---    - `?`
---  - `luaai.lua`
---  - `mapinfo.lua`
---  - `mapoptions.lua`
---  - `modinfo.lua`
---  - `modoptions.lua`
---  - `validmaps.lua`
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L27-L134" target="_blank">source</a>]
VFS = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L139-L139" target="_blank">source</a>]
---Only select uncompressed files.
VFS.RAW = "r"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L141-L141" target="_blank">source</a>]
VFS.RAW = "M"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L143-L143" target="_blank">source</a>]
VFS.GAME = "M"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L145-L145" target="_blank">source</a>]
VFS.MAP = "m"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L147-L147" target="_blank">source</a>]
VFS.BASE = "b"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L149-L149" target="_blank">source</a>]
VFS.MENU = "e"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L151-L151" target="_blank">source</a>]
---Only select compressed files (`.sdz`, `.sd7`).
VFS.ZIP = "Mmeb"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L153-L153" target="_blank">source</a>]
---Try uncompressed files first, then compressed.
VFS.RAW_FIRST = "rMmeb"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L155-L155" target="_blank">source</a>]
---Try compressed files first, then uncompressed.
VFS.RAW_FIRST = "Mmebr"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L157-L160" target="_blank">source</a>]
---
---@deprecated
VFS.RAW_ONLY = "r"

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L162-L165" target="_blank">source</a>]
---
---@deprecated
VFS.ZIP_ONLY = "Mmeb"

---Loads and compiles lua code from a file in the VFS.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L261-L295" target="_blank">source</a>]
---
---The path is relative to the main Spring directory, e.g.
---
---```lua
---VFS.Include('LuaUI/includes/filename.lua', nil, vfsmode)
---```
---
---@param filename string
---
---Path to file, lowercase only. Use linux style path separators, e.g.
---`"foo/bar.txt"`.
---@param environment table? (Default: `_G`)
---
---The environment arg sets the global environment (see generic lua refs). In
---almost all cases, this should be left `nil` to preserve Spring default.
---
---If the provided, any non-local variables and functions defined in
---`filename.lua` are then accessable via env or `_G`. Vise-versa, any variables
---defined in env prior to passing to `VFS.Include` are available to code in the
---included file. Code running in `filename.lua` will see the contents of env in
---place of the normal `_G` environment.
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@return any module The return value of the included file.
function VFS.Include(filename, environment, mode) end

---Load raw text data from the VFS.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L379-L399" target="_blank">source</a>]
---
---Returns file contents as a string. Unlike `VFS.Include` the file will not be
---executed.
---
---@param filename string
---
---Path to file, lowercase only. Use linux style path separators, e.g.
---`"foo/bar.txt"`.
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@return string? data The contents of the file.
function VFS.LoadFile(filename, mode) end

---Check if file exists in VFS.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L430-L455" target="_blank">source</a>]
---
---Example usage:
---
---```lua
---if VFS.FileExists("maps/Castles.sdz") then
---  # ...
---end
---```
---
---@param filename string
---
---Path to file, lowercase only. Use linux style path separators, e.g.
---`"foo/bar.txt"`.
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@return boolean exists `true` if the file exists, otherwise `false`.
function VFS.FileExists(filename, mode) end

---List files in a directory.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L476-L503" target="_blank">source</a>]
---
---Example usage:
---
---```lua
---local luaFiles = VFS.DirList('units/', '*.lua', nil, true)
---```
---
---@param directory string
---
---Path to directory, lowercase only. Use linux style path separators, e.g.
---`"foo/bar/"`.
---@param pattern string? (Default: `"*"`)
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@param recursive boolean? (Default: `false`)
---@return string[] filenames
function VFS.DirList(directory, pattern, mode, recursive) end

---List sub-directories in a directory.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L535-L565" target="_blank">source</a>]
---
---Example usage:
---
---```lua
---local files = VFS.SubDirs('sounds/voice/' .. language, '*')
---for _, file in ipairs(files) do
---	# ...
---end
---```
---
---@param directory string
---
---Path to directory, lowercase only. Use linux style path separators, e.g.
---`"foo/bar/"`.
---@param pattern string? (Default: `"*"`)
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@param recursive boolean? (Default: `false`)
---@return string[] dirnames
function VFS.SubDirs(directory, pattern, mode, recursive) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L593-L608" target="_blank">source</a>]
---
---@param filename string
---
---Path to file, lowercase only. Use linux style path separators, e.g.
---`"foo/bar.txt"`.
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@return string? absolutePath
function VFS.GetFileAbsolutePath(filename, mode) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L632-L647" target="_blank">source</a>]
---
---@param filename string
---
---Path to file, lowercase only. Use linux style path separators, e.g.
---`"foo/bar.txt"`.
---@param mode string?
---
---VFS modes are single char strings and can be concatenated;
---doing specifies an order of preference for the mode (i.e. location) from
---which to include files.
---@return string? archiveName
function VFS.GetArchiveContainingFile(filename, mode) end

---Temporarily load an archive from the VFS and run the given function,
---which can make usage of the files in the archive.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L672-L680" target="_blank">source</a>]
---
---@param archiveName string
---@param fun (...) func
---@return any ... Results of of the given function
function VFS.UseArchive(archiveName, fun) end

---Compresses the specified folder.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L800-L810" target="_blank">source</a>]
---
---@param folderPath string
---@param archiveType string? (Default: `"zip"`)The compression type (can
---currently be only `"zip"`).
---@param compressedFilePath string? (Default: `folderPath .. ".sdz"`)
---@param includeFolder boolean? (Default: `false`) Whether the archive should
---have the specified folder as root.
---@param mode string?
function VFS.CompressFolder(folderPath, archiveType, compressedFilePath, includeFolder, mode) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L846-L850" target="_blank">source</a>]
---
---@param uncompressed string Data to compress.
---@return string? compressed Compressed data, or `nil` on error.
function VFS.ZlibCompress(uncompressed) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L866-L870" target="_blank">source</a>]
---
---@param compressed string Data to decompress.
---@return string? uncompressed Uncompressed data, or `nil` on error.
function VFS.ZlibDecompress(compressed) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L887-L891" target="_blank">source</a>]
---
---@alias HashType
---| 0 # MD5
---| 1 # SHA512

---Calculates hash (in base64 form) of a given string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L893-L900" target="_blank">source</a>]
---
---@param input string
---@param hashType HashType Hash type.
---@return string? hash
function VFS.CalculateHash(input, hashType) end

---Convert unsigned 8-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L982-L987" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackU8(...) end

---Convert unsigned 8-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L988-L993" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackU8(numbers) end

---Convert unsigned 16-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L996-L1001" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackU16(...) end

---Convert unsigned 16-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1002-L1007" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackU16(numbers) end

---Convert unsigned 32-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1010-L1015" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackU32(...) end

---Convert unsigned 32-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1016-L1021" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackU32(numbers) end

---Convert signed 8-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1024-L1029" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackS8(...) end

---Convert signed 8-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1030-L1035" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackS8(numbers) end

---Convert signed 16-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1038-L1043" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackS16(...) end

---Convert signed 16-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1044-L1049" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackS16(numbers) end

---Convert signed 32-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1052-L1057" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackS32(...) end

---Convert signed 32-bit integer(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1058-L1063" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackS32(numbers) end

---Convert signed 32-bit float(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1066-L1071" target="_blank">source</a>]
---
---@param ... integer Numbers to pack.
---@return string
function VFS.PackS32(...) end

---Convert signed 32-bit float(s) to binary string.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1072-L1077" target="_blank">source</a>]
---
---@param numbers integer[] Numbers to pack.
---@return string
function VFS.PackS32(numbers) end

---Convert a binary string to an unsigned 8-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1125-L1131" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackU8(str, pos) end

---Convert a binary string to an unsigned 16-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1134-L1140" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackU16(str, pos) end

---Convert a binary string to an unsigned 32-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1143-L1149" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackU32(str, pos) end

---Convert a binary string to a signed 8-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1152-L1158" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackS8(str, pos) end

---Convert a binary string to a signed 16-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1161-L1167" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackS16(str, pos) end

---Convert a binary string to a signed 32-bit integer.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1170-L1176" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackS32(str, pos) end

---Convert a binary string to a signed 32-bit float.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/6e89a1b7714b077e5383a107f22d6313bd7d5a45/rts/Lua/LuaVFS.cpp#L1179-L1185" target="_blank">source</a>]
---
---@param str string Binary string.
---@param pos integer? Byte offset.
---@return integer
function VFS.UnpackF32(str, pos) end