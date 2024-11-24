
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 0.0.1
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Date: Sun, 24 Nov 2024 02:31:33 GMT
---Source: LuaRBOs.cpp
---
---@meta

---RBO
---
---@see rts/Lua/LuaRBOs.cpp

---User Data RBO
---
---@class RBO
---@field target GL
---@field format GL
---@field xsize integer
---@field ysize integer
---@field valid boolean
---@field samples integer will return globalRendering->msaaLevel for multisampled RBO or 0 otherwise
local RBO = {}

---@class CreateRBOData
---@field target GL
---@field format GL
---@field samples number? any number here will result in creation of multisampled RBO
local CreateRBOData = {}

---@param xsize integer
---@param ysize integer
---@param data CreateRBOData
---@return RBO
function gl.CreateRBO(xsize, ysize, data) end

---@param rbo RBO
function gl.DeleteRBO(rbo) end