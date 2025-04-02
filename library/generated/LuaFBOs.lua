---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaFBOs.cpp
---
---@meta

---FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L25-L28" target="_blank">source</a>]
---
---@see rts/Lua/LuaFBOs.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L104-L124" target="_blank">source</a>]
---
---@alias Attachment
---| "depth"
---| "stencil"
---| "color0"
---| "color1"
---| "color2"
---| "color3"
---| "color4"
---| "color5"
---| "color6"
---| "color7"
---| "color8"
---| "color9"
---| "color10"
---| "color11"
---| "color12"
---| "color13"
---| "color14"
---| "color15"

---User Data FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L438-L441" target="_blank">source</a>]
---
---@class FBO
local FBO = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L443-L465" target="_blank">source</a>]
---
---@class FBODescription
---@field depth string?
---@field stencil string?
---@field color0 string?
---@field color1 string?
---@field color2 string?
---@field color3 string?
---@field color4 string?
---@field color5 string?
---@field color6 string?
---@field color7 string?
---@field color8 string?
---@field color9 string?
---@field color10 string?
---@field color11 string?
---@field color12 string?
---@field color13 string?
---@field color14 string?
---@field color15 string?
---@field drawbuffers (integer|GL)[]? e.g. `{ GL_COLOR_ATTACHMENT0_EXT, GL_COLOR_ATTACHMENT3_EXT, ..}`
---@field readbuffer (integer|GL)? e.g. `GL_COLOR_ATTACHMENT0_EXT`
local FBODescription = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L467-L471" target="_blank">source</a>]
---
---@param fboDesc FBODescription
---@return FBO fbo
function gl.CreateFBO(fboDesc) end

---This doesn't delete the attached objects!
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L542-L547" target="_blank">source</a>]
---
---@param fbo FBO
function gl.DeleteFBO(fbo) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L560-L566" target="_blank">source</a>]
---
---@param fbo FBO
---@param target GL?
---@return boolean valid
---@return number? status
function gl.IsValidFBO(fbo, target) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L601-L606" target="_blank">source</a>]
---
---@param fbo FBO
---@param func fun(...)
---@param ... any args
function gl.ActiveFBO(fbo, func, ...) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L607-L613" target="_blank">source</a>]
---
---@param fbo FBO
---@param target GL?
---@param func fun(...)
---@param ... any args
function gl.ActiveFBO(fbo, target, func, ...) end

---Bind default or specified via rawFboId numeric id of FBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L677-L685" target="_blank">source</a>]
---
---@param fbo nil
---@param target GL? (Default: `GL_FRAMEBUFFER_EXT`)
---@param rawFboId integer? (Default: `0`)
---@return nil
function gl.RawBindFBO(fbo, target, rawFboId) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L686-L691" target="_blank">source</a>]
---
---@param fbo FBO
---@param target GL? (Default: `fbo.target`)
---@return number previouslyBoundRawFboId
function gl.RawBindFBO(fbo, target) end

---needs `GLAD_GL_EXT_framebuffer_blit`
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L719-L732" target="_blank">source</a>]
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
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L733-L748" target="_blank">source</a>]
---
---@param fboSrc FBO
---@param x0Src number
---@param y0Src number
---@param x1Src number
---@param y1Src number
---@param fboDst FBO
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
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaFBOs.cpp#L818-L829" target="_blank">source</a>]
---
---@param target number? (Default: `GL.FRAMEBUFFER`)
---@param attachment GL|Attachment (e.g. `"color0"` or `GL.COLOR_ATTACHMENT0`)
---@param clearValue0 number? (Default: `0`)
---@param clearValue1 number? (Default: `0`)
---@param clearValue2 number? (Default: `0`)
---@param clearValue3 number? (Default: `0`)
---@return boolean success
function gl.ClearAttachmentFBO(target, attachment, clearValue0, clearValue1, clearValue2, clearValue3) end