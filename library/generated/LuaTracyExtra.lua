---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaTracyExtra.cpp
---
---@meta

---Tracy extensions
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c17ba32ca64e58c17f306823fcb9782a01ade9ad/rts/Lua/LuaTracyExtra.cpp#L32-L35" target="_blank">source</a>]
tracy = {}

---Configure custom appearance for a Tracy plot for use in debugging or profiling
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c17ba32ca64e58c17f306823fcb9782a01ade9ad/rts/Lua/LuaTracyExtra.cpp#L37-L45" target="_blank">source</a>]
---
---@param plotName string name of the plot to customize
---@param plotFormatType "Number"|"Percentage"|"Memory"|nil (Default: `"Number"`)
---@param stepwise boolean? (Default: `true`) stepwise chart
---@param fill boolean? (Default: `false`) whether to fill color
---@param color integer? (Default: `0xFFFFFF`) uint32 number as BGR color
function tracy.LuaTracyPlotConfig(plotName, plotFormatType, stepwise, fill, color) end

---Update a Tracy plot with a value
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c17ba32ca64e58c17f306823fcb9782a01ade9ad/rts/Lua/LuaTracyExtra.cpp#L67-L72" target="_blank">source</a>]
---
---@param plotName string Which LuaPlot should be updated
---@param plotValue number the number to show on the Tracy plot
function tracy.LuaTracyPlot(plotName, plotValue) end