---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaRBOs.cpp
---
---@meta

---RBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e36cb76f2df53b31c339da1ed0634b24d2e95b12/rts/Lua/LuaRBOs.cpp#L14-L17" target="_blank">source</a>]
---
---@see rts/Lua/LuaRBOs.cpp

---User Data RBO
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/e36cb76f2df53b31c339da1ed0634b24d2e95b12/rts/Lua/LuaRBOs.cpp#L139-L148" target="_blank">source</a>]
---
---@class RBO
---@field target GL
---@field format GL
---@field xsize integer
---@field ysize integer
---@field valid boolean
---@field samples integer will return globalRendering->msaaLevel for multisampled RBO or 0 otherwise
local RBO = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/e36cb76f2df53b31c339da1ed0634b24d2e95b12/rts/Lua/LuaRBOs.cpp#L150-L155" target="_blank">source</a>]
---
---@class CreateRBOData
---@field target GL
---@field format GL
---@field samples number? any number here will result in creation of multisampled RBO
local CreateRBOData = {}

---[<a href="https://github.com/beyond-all-reason/spring/blob/e36cb76f2df53b31c339da1ed0634b24d2e95b12/rts/Lua/LuaRBOs.cpp#L157-L163" target="_blank">source</a>]
---
---@param xsize integer
---@param ysize integer
---@param data CreateRBOData
---@return RBO
function gl.CreateRBO(xsize, ysize, data) end

---[<a href="https://github.com/beyond-all-reason/spring/blob/e36cb76f2df53b31c339da1ed0634b24d2e95b12/rts/Lua/LuaRBOs.cpp#L233-L236" target="_blank">source</a>]
---
---@param rbo RBO
function gl.DeleteRBO(rbo) end