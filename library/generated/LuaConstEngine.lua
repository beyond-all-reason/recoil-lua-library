---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstEngine.cpp
---
---@meta

---Engine constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fff0e0d196ed403026c86445f5eea67eab129beb/rts/Lua/LuaConstEngine.cpp#L9-L12" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstEngine.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/fff0e0d196ed403026c86445f5eea67eab129beb/rts/Lua/LuaConstEngine.cpp#L14-L19" target="_blank">source</a>]
---
---@class FeatureSupport
---@field NegativeGetUnitCurrentCommand boolean
---@field hasExitOnlyYardmaps boolean
---@field rmlUiApiVersion integer
local FeatureSupport = {}

---Engine specific information.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/fff0e0d196ed403026c86445f5eea67eab129beb/rts/Lua/LuaConstEngine.cpp#L21-L34" target="_blank">source</a>]
Engine = {
	---@type string "Major.Minor.PatchSet" for releases, "Major.Minor.PatchSet-CommitNum-gHash branch" otherwise
	version = nil,

	---@type string "Major.Minor.PatchSet" for releases, "Major.Minor.PatchSet-CommitNum-gHash branch" otherwise. Will also include (buildFlags), if there're any.
	versionFull = nil,

	---@type string Major part of the named release version
	versionMajor = nil,

	---@type string Minor part of the named release version
	versionMinor = nil,

	---@type string Build number of the named release version
	versionPatchSet = nil,

	---@type string Number of commits after the latest named release, non-zero indicates a "dev" build
	commitsNumber = nil,

	---@type string Gets additional engine buildflags, e.g. "Debug" or "Sync-Debug"
	buildFlags = nil,

	---@type FeatureSupport Table containing various engine features as keys; use for cross-version compat
	featureSupport = nil,

	---@type number Indicates the build type always 64 these days
	wordSize = nil
}