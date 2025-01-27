
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 0.0.1
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: LuaTracyExtra.cpp
---
---@meta

---Tracy extensions
tracy = {

}

---Configure custom appearance for a Tracy plot for use in debugging or profiling
---
---@param plotName string name of the plot to customize
---@param plotFormatType "Number"|"Percentage"|"Memory"|nil (Default: `"Number"`)
---@param stepwise boolean? (Default: `true`) stepwise chart
---@param fill boolean? (Default: `false`) whether to fill color
---@param color integer? (Default: `0xFFFFFF`) uint32 number as BGR color
function tracy.LuaTracyPlotConfig(plotName, plotFormatType, stepwise, fill, color) end

---Update a Tracy plot with a value
---
---@param plotName string Which LuaPlot should be updated
---@param plotValue number the number to show on the Tracy plot
function tracy.LuaTracyPlot(plotName, plotValue) end