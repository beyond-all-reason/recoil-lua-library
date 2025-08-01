---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.3.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaRBOs.cpp
---
---@meta

---RBO
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaRBOs.cpp#L14-L17" target="_blank">source</a>]
---
---@see rts/Lua/LuaRBOs.cpp

---User Data RBO
---
---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaRBOs.cpp#L139-L148" target="_blank">source</a>]
---
---@class RBO
---@field target GL
---@field format GL
---@field xsize integer
---@field ysize integer
---@field valid boolean
---@field samples integer will return globalRendering->msaaLevel for multisampled RBO or 0 otherwise
local RBO = {}

---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaRBOs.cpp#L150-L156" target="_blank">source</a>]
---
---@class CreateRBOData
---@x_helper
---@field target GL
---@field format GL
---@field samples number? any number here will result in creation of multisampled RBO
local CreateRBOData = {}

---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaRBOs.cpp#L158-L164" target="_blank">source</a>]
---
---@param xsize integer
---@param ysize integer
---@param data CreateRBOData
---@return RBO
function gl.CreateRBO(xsize, ysize, data) end

---[<a href="https://github.com/beyond-all-reason/RecoilEngine/blob/master/rts/Lua/LuaRBOs.cpp#L234-L237" target="_blank">source</a>]
---
---@param rbo RBO
function gl.DeleteRBO(rbo) end