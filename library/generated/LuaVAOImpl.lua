---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaVAOImpl.cpp
---
---@meta

---Vertex Array Object
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L18-L25" target="_blank">source</a>]
---
---@class VAO
---@see LuaVAO.GetVAO
---@see rts/Lua/LuaVAOImpl.cpp
VAO = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L39-L43" target="_blank">source</a>]
---
---@return nil
function VAO:Delete() end

---Attaches a VBO to be used as a vertex buffer
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L93-L98" target="_blank">source</a>]
---
---@param vbo VBO
---@return nil
function VAO:AttachVertexBuffer(vbo) end

---Attaches a VBO to be used as an instance buffer
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L105-L110" target="_blank">source</a>]
---
---@param vbo VBO
---@return nil
function VAO:AttachInstanceBuffer(vbo) end

---Attaches a VBO to be used as an index buffer
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L117-L122" target="_blank">source</a>]
---
---@param vbo VBO
---@return nil
function VAO:AttachIndexBuffer(vbo) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L367-L376" target="_blank">source</a>]
---
---@param glEnum number primitivesMode
---@param vertexCount number?
---@param vertexFirst number?
---@param instanceCount number?
---@param instanceFirst number?
---@return nil
function VAO:DrawArrays(glEnum, vertexCount, vertexFirst, instanceCount, instanceFirst) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L404-L414" target="_blank">source</a>]
---
---@param glEnum number primitivesMode
---@param drawCount number?
---@param baseIndex number?
---@param instanceCount number?
---@param baseVertex number?
---@param baseInstance number?
---@return nil
function VAO:DrawElements(glEnum, drawCount, baseIndex, instanceCount, baseVertex, baseInstance) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L466-L471" target="_blank">source</a>]
---
---@param unitIDs number|number[]
---@return number submittedCount
function VAO:AddUnitsToSubmission(unitIDs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L476-L481" target="_blank">source</a>]
---
---@param featureIDs number|number[]
---@return number submittedCount
function VAO:AddFeaturesToSubmission(featureIDs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L486-L491" target="_blank">source</a>]
---
---@param unitDefIDs number|number[]
---@return number submittedCount
function VAO:AddUnitDefsToSubmission(unitDefIDs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L496-L501" target="_blank">source</a>]
---
---@param featureDefIDs number|number[]
---@return number submittedCount
function VAO:AddFeatureDefsToSubmission(featureDefIDs) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L506-L511" target="_blank">source</a>]
---
---@param index number
---@return nil
function VAO:RemoveFromSubmission(index) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e59c1a1c8f41725e3da61dd3e6c0a972e95a67ce/rts/Lua/LuaVAOImpl.cpp#L529-L533" target="_blank">source</a>]
---
---@return nil
function VAO:Submit() end