---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstCOB.cpp
---
---@meta

---COB constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstCOB.cpp#L12-L15" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstCOB.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstCOB.cpp#L22-L101" target="_blank">source</a>]
---
---@enum COB
COB = {
	---@type number
	ACTIVATION = nil,

	---@type number
	STANDINGMOVEORDERS = nil,

	---@type number
	STANDINGFIREORDERS = nil,

	---@type number
	HEALTH = nil,

	---@type number
	INBUILDSTANCE = nil,

	---@type number
	BUSY = nil,

	---@type number
	PIECE_XZ = nil,

	---@type number
	PIECE_Y = nil,

	---@type number
	UNIT_XZ = nil,

	---@type number
	UNIT_Y = nil,

	---@type number
	UNIT_HEIGHT = nil,

	---@type number
	XZ_ATAN = nil,

	---@type number
	XZ_HYPOT = nil,

	---@type number
	ATAN = nil,

	---@type number
	HYPOT = nil,

	---@type number
	GROUND_HEIGHT = nil,

	---@type number
	BUILD_PERCENT_LEFT = nil,

	---@type number
	YARD_OPEN = nil,

	---@type number
	BUGGER_OFF = nil,

	---@type number
	ARMORED = nil,

	---@type number
	IN_WATER = nil,

	---@type number
	CURRENT_SPEED = nil,

	---@type number
	VETERAN_LEVEL = nil,

	---@type number
	ON_ROAD = nil,

	---@type number
	MAX_ID = nil,

	---@type number
	MY_ID = nil,

	---@type number
	UNIT_TEAM = nil,

	---@type number
	UNIT_BUILD_PERCENT_LEFT = nil,

	---@type number
	UNIT_ALLIED = nil,

	---@type number
	MAX_SPEED = nil,

	---@type number
	CLOAKED = nil,

	---@type number
	WANT_CLOAK = nil,

	---@type number
	GROUND_WATER_HEIGHT = nil,

	---@type number
	UPRIGHT = nil,

	---@type number
	POW = nil,

	---@type number
	PRINT = nil,

	---@type number
	HEADING = nil,

	---@type number
	TARGET_ID = nil,

	---@type number
	LAST_ATTACKER_ID = nil,

	---@type number
	LOS_RADIUS = nil,

	---@type number
	AIR_LOS_RADIUS = nil,

	---@type number
	RADAR_RADIUS = nil,

	---@type number
	JAMMER_RADIUS = nil,

	---@type number
	SONAR_RADIUS = nil,

	---@type number
	SONAR_JAM_RADIUS = nil,

	---@type number
	SEISMIC_RADIUS = nil,

	---@type number
	DO_SEISMIC_PING = nil,

	---@type number
	CURRENT_FUEL = nil,

	---@type number
	TRANSPORT_ID = nil,

	---@type number
	SHIELD_POWER = nil,

	---@type number
	STEALTH = nil,

	---@type number
	CRASHING = nil,

	---@type number
	CHANGE_TARGET = nil,

	---@type number
	CEG_DAMAGE = nil,

	---@type number
	COB_ID = nil,

	---@type number
	PLAY_SOUND = nil,

	---@type number
	KILL_UNIT = nil,

	---@type number
	ALPHA_THRESHOLD = nil,

	---@type number
	SET_WEAPON_UNIT_TARGET = nil,

	---@type number
	SET_WEAPON_GROUND_TARGET = nil,

	---@type number
	SONAR_STEALTH = nil,

	---@type number
	REVERSING = nil,

	---@type number
	FLANK_B_MODE = nil,

	---@type number
	FLANK_B_DIR = nil,

	---@type number
	FLANK_B_MOBILITY_ADD = nil,

	---@type number
	FLANK_B_MAX_DAMAGE = nil,

	---@type number
	FLANK_B_MIN_DAMAGE = nil,

	---@type number
	WEAPON_RELOADSTATE = nil,

	---@type number
	WEAPON_RELOADTIME = nil,

	---@type number
	WEAPON_ACCURACY = nil,

	---@type number
	WEAPON_SPRAY = nil,

	---@type number
	WEAPON_RANGE = nil,

	---@type number
	WEAPON_PROJECTILE_SPEED = nil,

	---@type number
	MIN = nil,

	---@type number
	MAX = nil,

	---@type number
	ABS = nil,

	---@type number
	GAME_FRAME = nil
}

---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstCOB.cpp#L203-L265" target="_blank">source</a>]
---
---@enum SFX
SFX = {
	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	SHATTER = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	EXPLODE = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	EXPLODE_ON_HIT = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	FALL = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	SMOKE = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	FIRE = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	NONE = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	NO_CEG_TRAIL = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	NO_HEATCLOUD = nil,

	---@type number
	---Piece Flag for `Spring.UnitScript.Explode`
	RECURSIVE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	VTOL = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	WAKE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	REVERSE_WAKE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	WHITE_SMOKE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	BLACK_SMOKE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	BUBBLE = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	CEG = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	FIRE_WEAPON = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	DETONATE_WEAPON = nil,

	---@type number
	---For `Spring.UnitScript.EmitSfx`.
	GLOBAL = nil
}