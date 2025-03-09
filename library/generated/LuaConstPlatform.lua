---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstPlatform.cpp
---
---@meta

---Platform constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstPlatform.cpp#L10-L13" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstPlatform.cpp

---Platform specific information
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstPlatform.cpp#L15-L44" target="_blank">source</a>]
Platform = {
	---@type string Full GPU device name
	gpu = nil,

	---@type "Nvidia"|"Intel"|"ATI"|"Mesa"|"Unknown"
	gpuVendor = nil,

	---@type string `major.minor.buildNumber`
	glVersionShort = nil,

	---@type string `major.minor`
	glslVersionShort = nil,

	---@type string Full version
	glVersion = nil,

	---@type string
	glVendor = nil,

	---@type string
	glRenderer = nil,

	---@type string Full version
	glslVersion = nil,

	---@type string
	gladVersion = nil,

	---@type string full name of the OS
	osName = nil,

	---@type "Windows"|"Linux"|"MacOSX"|"FreeBSD"|"Unknown"
	osFamily = nil,

	---@type number
	numDisplays = nil,

	---@type number Size of total GPU memory in MBs; only available for "Nvidia", (rest are 0)
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

	---@type number Total physical system RAM in MBs.
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