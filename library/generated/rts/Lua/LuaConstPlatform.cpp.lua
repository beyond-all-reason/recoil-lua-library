---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.2.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstPlatform.cpp
---
---@meta

---Platform constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaConstPlatform.cpp#L10-L13" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstPlatform.cpp

---Platform specific information
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/cb7d17009cf3f31793e72cd3356bfa752a897dc2/rts/Lua/LuaConstPlatform.cpp#L15-L44" target="_blank">source</a>]
Platform = {
	---Full GPU device name
	---
	---@type string
	gpu = nil,

	---@type "Nvidia"|"Intel"|"ATI"|"Mesa"|"Unknown"
	gpuVendor = nil,

	---`major.minor.buildNumber`
	---
	---@type string
	glVersionShort = nil,

	---`major.minor`
	---
	---@type string
	glslVersionShort = nil,

	---Full version
	---
	---@type string
	glVersion = nil,

	---@type string
	glVendor = nil,

	---@type string
	glRenderer = nil,

	---Full version
	---
	---@type string
	glslVersion = nil,

	---@type string
	gladVersion = nil,

	---full name of the OS
	---
	---@type string
	osName = nil,

	---@type "Windows"|"Linux"|"MacOSX"|"FreeBSD"|"Unknown"
	osFamily = nil,

	---@type number
	numDisplays = nil,

	---Size of total GPU memory in MBs; only available for "Nvidia", (rest are 0)
	---
	---@type number
	gpuMemorySize = nil,

	---@type number
	sdlVersionCompiledMajor = nil,

	---@type number
	sdlVersionCompiledMinor = nil,

	---@type number
	sdlVersionCompiledPatch = nil,

	---@type number
	sdlVersionLinkedMajor = nil,

	---@type number
	sdlVersionLinkedMinor = nil,

	---@type number
	sdlVersionLinkedPatch = nil,

	---Total physical system RAM in MBs.
	---
	---@type number
	totalRAM = nil,

	---@type boolean
	glSupportNonPowerOfTwoTex = nil,

	---@type boolean
	glSupportTextureQueryLOD = nil,

	---@type boolean
	glSupport24bitDepthBuffer = nil,

	---@type boolean
	glSupportRestartPrimitive = nil,

	---@type boolean
	glSupportClipSpaceControl = nil,

	---@type boolean
	glSupportFragDepthLayout = nil
}