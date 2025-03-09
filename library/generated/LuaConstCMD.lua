---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstCMD.cpp
---
---@meta

---Command constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaConstCMD.cpp#L12-L15" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstCMD.cpp

---[<a href="https://github.com/beyond-all-reason/spring/blob/c80024e36bb068da52e7d715b269abe73bc93338/rts/Lua/LuaConstCMD.cpp#L17-L80" target="_blank">source</a>]
---
---@enum CMD
CMD = {
	---@type -1
	FIRESTATE_NONE = nil,

	---@type -1
	MOVESTATE_NONE = nil,

	---@type 0
	STOP = nil,

	---@type 0
	MOVESTATE_HOLDPOS = nil,

	---@type 0
	FIRESTATE_HOLDFIRE = nil,

	---@type 1
	INSERT = nil,

	---@type 1
	MOVESTATE_MANEUVER = nil,

	---@type 1
	FIRESTATE_RETURNFIRE = nil,

	---@type 1
	WAITCODE_TIME = nil,

	---@type 2
	WAITCODE_DEATH = nil,

	---@type 2
	MOVESTATE_ROAM = nil,

	---@type 2
	REMOVE = nil,

	---@type 2
	FIRESTATE_FIREATWILL = nil,

	---@type 3
	FIRESTATE_FIREATNEUTRAL = nil,

	---@type 3
	WAITCODE_SQUAD = nil,

	---@type 4
	OPT_META = nil,

	---@type 4
	WAITCODE_GATHER = nil,

	---@type 5
	WAIT = nil,

	---@type 6
	TIMEWAIT = nil,

	---@type 7
	DEATHWAIT = nil,

	---@type 8
	OPT_INTERNAL = nil,

	---@type 8
	SQUADWAIT = nil,

	---@type 9
	GATHERWAIT = nil,

	---@type 10
	MOVE = nil,

	---@type 15
	PATROL = nil,

	---@type 16
	FIGHT = nil,

	---@type 16
	OPT_RIGHT = nil,

	---@type 20
	LOOPBACKATTACK = nil,

	---@type 20
	ATTACK = nil,

	---@type 21
	AREA_ATTACK = nil,

	---@type 25
	GUARD = nil,

	---@type 32
	OPT_SHIFT = nil,

	---@type 35
	GROUPSELECT = nil,

	---@type 36
	GROUPADD = nil,

	---@type 37
	GROUPCLEAR = nil,

	---@type 40
	REPAIR = nil,

	---@type 45
	FIRE_STATE = nil,

	---@type 50
	MOVE_STATE = nil,

	---@type 55
	SETBASE = nil,

	---@type 60
	INTERNAL = nil,

	---@type 64
	OPT_CTRL = nil,

	---@type 65
	SELFD = nil,

	---@type 70
	SET_WANTED_MAX_SPEED = nil,

	---@type 75
	LOAD_UNITS = nil,

	---@type 76
	LOAD_ONTO = nil,

	---@type 80
	UNLOAD_UNITS = nil,

	---@type 81
	UNLOAD_UNIT = nil,

	---@type 85
	ONOFF = nil,

	---@type 90
	RECLAIM = nil,

	---@type 95
	CLOAK = nil,

	---@type 100
	STOCKPILE = nil,

	---@type 105
	MANUALFIRE = nil,

	---@type 105
	DGUN = nil,

	---@type 110
	RESTORE = nil,

	---@type 115
	REPEAT = nil,

	---@type 120
	TRAJECTORY = nil,

	---@type 125
	RESURRECT = nil,

	---@type 128
	OPT_ALT = nil,

	---@type 130
	CAPTURE = nil,

	---@type 135
	AUTOREPAIRLEVEL = nil,

	---@type 145
	IDLEMODE = nil
}