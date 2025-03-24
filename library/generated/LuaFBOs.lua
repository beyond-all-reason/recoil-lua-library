---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaFBOs.cpp
---
---@meta

---FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L25-L28" target="_blank">source</a>]
---
---@see rts/Lua/LuaFBOs.cpp

---attachment ::= luaTex or `RBO.rbo` or nil or { luaTex [, num target [, num level ] ] }
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L416-L419" target="_blank">source</a>]
---
---@class attachment
local attachment = {}

---User Data FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L421-L433" target="_blank">source</a>]
---
---@class Fbo
---@field depth attachment
---@field stencil attachment
---@field color0 attachment
---@field color1 attachment
---@field color2 attachment
---@field colorn attachment
---@field color15 attachment
---@field drawbuffers table `{ GL_COLOR_ATTACHMENT0_EXT, GL_COLOR_ATTACHMENT3_EXT, ..}`
---@field readbuffer table `GL_COLOR_ATTACHMENT0_EXT`
local Fbo = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L435-L438" target="_blank">source</a>]
---
---@param fbo Fbo
function gl.CreateFBO(fbo) end

---This doesn't delete the attached objects!
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L509-L514" target="_blank">source</a>]
---
---@param fbo Fbo
function gl.DeleteFBO(fbo) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L527-L533" target="_blank">source</a>]
---
---@param fbo Fbo
---@param target GL?
---@return boolean valid
---@return number? status
function gl.IsValidFBO(fbo, target) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L569-L578" target="_blank">source</a>]
---
---@param fbo Fbo
---@param target GL?
---@param identities boolean?
---@param lua_function function?
---@param arg1 any?
---@param arg2 any?
---@param argn any?
function gl.ActiveFBO(fbo, target, identities, lua_function, arg1, arg2, argn) end

---Bind default or specified via rawFboId numeric id of FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L642-L650" target="_blank">source</a>]
---
---@param fbo nil
---@param target GL? (Default: `GL_FRAMEBUFFER_EXT`)
---@param rawFboId integer? (Default: `0`)
---@return nil
function gl.RawBindFBO(fbo, target, rawFboId) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L651-L656" target="_blank">source</a>]
---
---@param fbo Fbo
---@param target GL? (Default: `fbo.target`)
---@return number previouslyBoundRawFboId
function gl.RawBindFBO(fbo, target) end

---needs `GLAD_GL_EXT_framebuffer_blit`
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L684-L697" target="_blank">source</a>]
---
---@param x0Src number
---@param y0Src number
---@param x1Src number
---@param y1Src number
---@param x0Dst number
---@param y0Dst number
---@param x1Dst number
---@param y1Dst number
---@param mask number? (Default: GL_COLOR_BUFFER_BIT)
---@param filter number? (Default: GL_NEAREST)
function gl.BlitFBO(x0Src, y0Src, x1Src, y1Src, x0Dst, y0Dst, x1Dst, y1Dst, mask, filter) end

---needs `GLAD_GL_EXT_framebuffer_blit`
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L698-L713" target="_blank">source</a>]
---
---@param fboSrc Fbo
---@param x0Src number
---@param y0Src number
---@param x1Src number
---@param y1Src number
---@param fboDst Fbo
---@param x0Dst number
---@param y0Dst number
---@param x1Dst number
---@param y1Dst number
---@param mask number? (Default: GL_COLOR_BUFFER_BIT)
---@param filter number? (Default: GL_NEAREST)
function gl.BlitFBO(fboSrc, x0Src, y0Src, x1Src, y1Src, fboDst, x0Dst, y0Dst, x1Dst, y1Dst, mask, filter) end

---needs `Platform.glVersionNum >= 30`
---Clears the "attachment" of the currently bound FBO type "target" with "clearValues"
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/240e04f696027d8ff7026e88b325426237ff97d8/rts/Lua/LuaFBOs.cpp#L783-L793" target="_blank">source</a>]
---
---@param target number? (Default: GL.FRAMEBUFFER)
---@param attachment GL|string (e.g. `"color0"` or `GL.COLOR_ATTACHMENT0`)
---@param clearValue0 number
---@param clearValue1 number
---@param clearValue2 number
---@param clearValue3 number
function gl.ClearAttachmentFBO(target, attachment, clearValue0, clearValue1, clearValue2, clearValue3) end