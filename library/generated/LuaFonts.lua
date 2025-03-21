---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaFonts.cpp
---
---@meta

---Adds a fallback font for the font rendering engine.
---
---Fonts added first will have higher priority.
---When a glyph isn't found when rendering a font, the fallback fonts
---will be searched first, otherwise os fonts will be used.
---
---The application should listen for the unsynced 'FontsChanged' callin so
---modules can clear any already reserved display lists or other relevant
---caches.
---
---Note the callin won't be executed at the time of calling this method,
---but later, on the Update cycle (before other Update and Draw callins).
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaFonts.cpp#L210-L226" target="_blank">source</a>]
---
---@param filePath string VFS path to the file, for example "fonts/myfont.ttf". Uses VFS.RAW_FIRST access mode.
---@return boolean success
function gl.AddFallbackFont(filePath) end

---Clears all fallback fonts.
---
---See the note at 'AddFallbackFont' about the 'FontsChanged' callin,
---it also applies when calling this method.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/b00cbdfdcad8b5f6083e53a4ae6f2a8ccf46b133/rts/Lua/LuaFonts.cpp#L238-L245" target="_blank">source</a>]
---
---@return nil
function gl.ClearFallbackFonts() end