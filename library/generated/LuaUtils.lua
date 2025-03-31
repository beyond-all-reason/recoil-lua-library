---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaUtils.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L527-L533" target="_blank">source</a>]
---
---@param minMajorVer integer
---@param minMinorVer integer? (Default: `0`)
---@param minCommits integer? (Default: `0`)
---@return boolean satisfiesMin `true` if the engine version is greater or equal to the specified version, otherwise `false`.
function Script.IsEngineMinVersion(minMajorVer, minMinorVer, minCommits) end

---Full command options object for reading from a `Command`.
---
---Note that this has extra fields `internal` and `coded` that are not supported
---when creating a command from Lua.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L931-L945" target="_blank">source</a>]
---
---@class CommandOptions
---@field coded CommandOptionBit|integer Bitmask of command options.
---@field alt boolean Alt key pressed.
---@field ctrl boolean Ctrl key pressed.
---@field shift boolean Shift key pressed.
---@field right boolean Right mouse key pressed.
---@field meta boolean Meta key (space) pressed.
---@field internal boolean
local CommandOptions = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L980-L988" target="_blank">source</a>]
---
---@alias CommandOptionBit
---| 4 # Meta (windows/mac/mod4) key.
---| 8 # Internal order.
---| 16 # Right mouse key.
---| 32 # Shift key.
---| 64 # Control key.
---| 128 # Alt key.

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L990-L997" target="_blank">source</a>]
---
---@alias CommandOptionName
---| "right" # Right mouse key.
---| "alt" # Alt key.
---| "ctrl" # Control key.
---| "shift" # Shift key.
---| "meta" # Meta key (space).

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L999-L1005" target="_blank">source</a>]
---
---@alias CreateCommandOptions
---| CommandOptionName[] # An array of option names.
---| table<CommandOptionName, boolean> # A map of command names to booleans, considered held when `true`.
---| CommandOptionBit # A specific integer value for a command option.
---| integer # A bit mask combination of `CommandOptionBit` values. Pass `0` for no options.

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1098-L1102" target="_blank">source</a>]
---
---@alias CreateCommandParams
---| number[] # An array of parameters.
---| number # A single parameter.

---Used when assigning multiple commands at once.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1151-L1159" target="_blank">source</a>]
---
---@class CreateCommand
---@field [1] CMD|integer Command ID.
---@field [2] CreateCommandParams? Parameters for the given command.
---@field [3] CreateCommandOptions? Command options.
---@field [4] integer? Timeout.
local CreateCommand = {}

---Facing direction represented by a string or number.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1232-L1250" target="_blank">source</a>]
---
---@see FacingInteger
---@alias Facing
---| 0 # South
---| 1 # East
---| 2 # North
---| 3 # West
---| "s" # South
---| "e" # East
---| "n" # North
---| "w" # West
---| "south" # South
---| "east" # East
---| "north" # North
---| "west" # West

---Prints values in the spring chat console. Useful for debugging.
---
---Hint: the default print() writes to STDOUT.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1388-L1398" target="_blank">source</a>]
---
---@param arg any
---@param ... any
---@return nil
function Spring.Echo(arg, ...) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1405-L1415" target="_blank">source</a>]
---
---@enum LOG
---@see Spring.Log
LOG = {
	DEBUG = 20,

	INFO = 30,

	---Engine default.
	NOTICE = 35,

	DEPRECATED = 37,

	WARNING = 40,

	ERROR = 50,

	FATAL = 60
}

---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1430-L1440" target="_blank">source</a>]
---
---@alias LogLevel
---| integer
---| "debug"      # LOG.DEBUG
---| "info"       # LOG.INFO
---| "notice"     # LOG.NOTICE (engine default)
---| "warning"    # LOG.WARNING
---| "deprecated" # LOG.DEPRECATED
---| "error"      # LOG.ERROR
---| "fatal"      # LOG.FATAL

---Logs a message to the logfile/console.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1468-L1475" target="_blank">source</a>]
---
---@param section string
---@param logLevel (LogLevel|LOG)? (Default: `"notice"`)
---@param ... string messages
function Spring.Log(section, logLevel, ...) end

---Command Description
---
---Contains data about a command.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c3d683dd93c43b6df48a65c2ddbbec8d8e822456/rts/Lua/LuaUtils.cpp#L1570-L1589" target="_blank">source</a>]
---
---@class CommandDescription
---@field id (CMD|integer)?
---@field type CMDTYPE?
---@field name string?
---@field action string?
---@field tooltip string?
---@field texture string?
---@field cursor string?
---@field queueing boolean?
---@field hidden boolean?
---@field disabled boolean?
---@field showUnique boolean?
---@field onlyTexture boolean?
---@field params string[]?
local CommandDescription = {}