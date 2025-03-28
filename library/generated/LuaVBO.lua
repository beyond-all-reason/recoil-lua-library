---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaVBO.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/7956ca9fcba24cb28088d05e5408f5c53951a7a4/rts/Lua/LuaVBO.cpp#L14-L17" target="_blank">source</a>]
---
---@see rts/Lua/LuaVBO.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/7956ca9fcba24cb28088d05e5408f5c53951a7a4/rts/Lua/LuaVBO.cpp#L123-L129" target="_blank">source</a>]
---
---@alias GLBufferType
---| GL.ARRAY_BUFFER
---| GL.ELEMENT_ARRAY_BUFFER
---| GL.UNIFORM_BUFFER
---| GL.SHADER_STORAGE_BUFFER

---Example:
---
---```lua
---local myVBO = gl.GetVBO()
---if myVBO == nil then Spring.Echo("Failed to get VBO") end
---```
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/7956ca9fcba24cb28088d05e5408f5c53951a7a4/rts/Lua/LuaVBO.cpp#L132-L156" target="_blank">source</a>]
---
---@param bufferType GLBufferType? (Default: GL.ARRAY_BUFFER)
---
---Use `GL.ARRAY_BUFFER` for vertex data and
---`GL.ELEMENT_ARRAY_BUFFER` for vertex indices.
---@param freqUpdated boolean? (Default: `true`)
---
---`true` to updated frequently, `false` to update only once.
---@return VBO? VBO
---
---The VBO ref on success, or nil if not supported or an error occurred.
---@see GL.OpenGL_Buffer_Types
function gl.GetVBO(bufferType, freqUpdated) end