---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstEngine.cpp
---
---@meta

---Engine constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstEngine.cpp#L10-L13" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstEngine.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstEngine.cpp#L15-L26" target="_blank">source</a>]
---
---@class FeatureSupport
---@field NegativeGetUnitCurrentCommand boolean Whether Spring.GetUnitCurrentCommand allows negative indices to look from the end
---@field hasExitOnlyYardmaps boolean Whether yardmaps accept 'e' (exit only) and 'u' (unbuildable, walkable)
---@field rmlUiApiVersion integer Version of Recoil's rmlUI API
---@field noAutoShowMetal boolean Whether the engine switches to the metal view when selecting a "build metal extractor" command (yes if false)
---@field maxPiecesPerModel integer How many pieces supported for 3d models?
---@field gunshipCruiseAltitudeMultiplier number For gunships, the cruiseAltitude from the unit def is multiplied by this much
---@field noRefundForConstructionDecay boolean Whether there is no refund for construction decay (100% metal back if false)
---@field noRefundForFactoryCancel boolean Whether there is no refund for factory cancel (100% metal back if false)
---@field noOffsetForFeatureID boolean Whether featureID from various interfaces (targetID for Reclaim commands, ownerID from SpringGetGroundDecalOwner, etc) needs to be offset by `Game.maxUnits`
local FeatureSupport = {}

---Engine specific information.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstEngine.cpp#L28-L43" target="_blank">source</a>]
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
	wordSize = nil,

	---@type number Number of simulation gameframes per second
	gameSpeed = nil,

	---@type TextColorCode Table containing keys that represent the color code operations during font rendering
	textColorCodes = nil
}