---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaVBO.cpp
---
---@meta

---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaVBO.cpp#L14-L17" target="_blank">source</a>]
---
---@see rts/Lua/LuaVBO.cpp

---Example:
---
---```lua
---local myVBO = gl.GetVBO()
---if myVBO == nil then Spring.Echo("Failed to get VBO") end
---```
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaVBO.cpp#L124-L151" target="_blank">source</a>]
---
---@param bufferType GL? (Default: `GL.ARRAY_BUFFER`) The buffer type to use.
---
---Accepts the following:
---- `GL.ARRAY_BUFFER` for vertex data.
---- `GL.ELEMENT_ARRAY_BUFFER` for vertex indices.
---- `GL.UNIFORM_BUFFER`
---- `GL.SHADER_STORAGE_BUFFER`
---@param freqUpdated boolean? (Default: `true`)
---
---`true` to updated frequently, `false` to update only once.
---@return VBO? VBO
---
---The VBO ref on success, or nil if not supported or an error occurred.
---@see GL.OpenGL_Buffer_Types
function gl.GetVBO(bufferType, freqUpdated) end