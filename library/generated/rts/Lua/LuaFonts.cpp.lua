---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.3.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaFonts.cpp
---
---@meta

---Lua opengl font object.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaFonts.cpp#L21-L27" target="_blank">source</a>]
---
---@class LuaFont
---@see gl.LoadFont
LuaFont = {}

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
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaFonts.cpp#L219-L235" target="_blank">source</a>]
---
---@param filePath string VFS path to the file, for example "fonts/myfont.ttf". Uses VFS.RAW_FIRST access mode.
---@return boolean success
function gl.AddFallbackFont(filePath) end

---Clears all fallback fonts.
---
---See the note at 'AddFallbackFont' about the 'FontsChanged' callin,
---it also applies when calling this method.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaFonts.cpp#L247-L254" target="_blank">source</a>]
---
---@return nil
function gl.ClearFallbackFonts() end

---Begin a block of font commands.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaFonts.cpp#L368-L381" target="_blank">source</a>]
---
---Fonts can be printed without using Start/End, but when doing several operations it's more optimal
---if done inside a block.
---
---Also allows disabling automatic setting of the blend mode. Otherwise the font will always print
---with `BlendFunc(GL.SRC_ALPHA, GL.ONE_MINUS_SRC_ALPHA)`.
---
---@param userDefinedBlending boolean? When `true` doesn't set the gl.BlendFunc automatically. Defaults to `false`.
---@see gl.BlendFunc
---@see gl.BlendFuncSeparate
function LuaFont:Begin(userDefinedBlending) end

---Draws text printed with the `buffered` option.
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaFonts.cpp#L401-L410" target="_blank">source</a>]
---
---@param noBillboarding boolean? When `false` sets 3d billboard mode. Defaults to `true`.
---@param userDefinedBlending boolean? When `true` doesn't set the gl.BlendFunc automatically. Defaults to `false`.
---@see gl.BlendFunc
---@see gl.BlendFuncSeparate
function LuaFont:SubmitBuffered(noBillboarding, userDefinedBlending) end