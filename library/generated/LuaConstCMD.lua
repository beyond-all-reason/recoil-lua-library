---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstCMD.cpp
---
---@meta

---Command constants.
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L12-L15" target="_blank">source</a>]
---
---@enum CMD
CMD = {
	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L19-L19" target="_blank">source</a>]
	OPT_ALT = 128,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L21-L21" target="_blank">source</a>]
	OPT_CTRL = 64,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L23-L23" target="_blank">source</a>]
	OPT_SHIFT = 32,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L25-L25" target="_blank">source</a>]
	OPT_RIGHT = 16,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L27-L27" target="_blank">source</a>]
	OPT_INTERNAL = 8,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L29-L29" target="_blank">source</a>]
	OPT_META = 4,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L32-L32" target="_blank">source</a>]
	MOVESTATE_NONE = -1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L34-L34" target="_blank">source</a>]
	MOVESTATE_HOLDPOS = 0,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L36-L36" target="_blank">source</a>]
	MOVESTATE_MANEUVER = 1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L38-L38" target="_blank">source</a>]
	MOVESTATE_ROAM = 2,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L41-L41" target="_blank">source</a>]
	FIRESTATE_NONE = -1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L43-L43" target="_blank">source</a>]
	FIRESTATE_HOLDFIRE = 0,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L45-L45" target="_blank">source</a>]
	FIRESTATE_RETURNFIRE = 1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L47-L47" target="_blank">source</a>]
	FIRESTATE_FIREATWILL = 2,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L49-L49" target="_blank">source</a>]
	FIRESTATE_FIREATNEUTRAL = 3,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L52-L52" target="_blank">source</a>]
	WAITCODE_TIME = 1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L54-L54" target="_blank">source</a>]
	WAITCODE_DEATH = 2,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L56-L56" target="_blank">source</a>]
	WAITCODE_SQUAD = 3,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L58-L58" target="_blank">source</a>]
	WAITCODE_GATHER = 4,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L63-L63" target="_blank">source</a>]
	STOP = 0,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L65-L65" target="_blank">source</a>]
	INSERT = 1,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L67-L67" target="_blank">source</a>]
	REMOVE = 2,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L69-L69" target="_blank">source</a>]
	WAIT = 5,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L71-L71" target="_blank">source</a>]
	TIMEWAIT = 6,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L73-L73" target="_blank">source</a>]
	DEATHWAIT = 7,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L75-L75" target="_blank">source</a>]
	SQUADWAIT = 8,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L77-L77" target="_blank">source</a>]
	GATHERWAIT = 9,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L79-L79" target="_blank">source</a>]
	MOVE = 10,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L81-L81" target="_blank">source</a>]
	PATROL = 15,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L83-L83" target="_blank">source</a>]
	FIGHT = 16,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L85-L85" target="_blank">source</a>]
	ATTACK = 20,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L87-L87" target="_blank">source</a>]
	AREA_ATTACK = 21,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L89-L89" target="_blank">source</a>]
	GUARD = 25,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L91-L91" target="_blank">source</a>]
	GROUPSELECT = 35,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L93-L93" target="_blank">source</a>]
	GROUPADD = 36,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L95-L95" target="_blank">source</a>]
	GROUPCLEAR = 37,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L97-L97" target="_blank">source</a>]
	REPAIR = 40,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L99-L99" target="_blank">source</a>]
	FIRE_STATE = 45,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L101-L101" target="_blank">source</a>]
	MOVE_STATE = 50,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L103-L103" target="_blank">source</a>]
	SETBASE = 55,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L105-L105" target="_blank">source</a>]
	INTERNAL = 60,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L107-L107" target="_blank">source</a>]
	SELFD = 65,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L109-L109" target="_blank">source</a>]
	LOAD_UNITS = 75,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L111-L111" target="_blank">source</a>]
	LOAD_ONTO = 76,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L113-L113" target="_blank">source</a>]
	UNLOAD_UNITS = 80,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L115-L115" target="_blank">source</a>]
	UNLOAD_UNIT = 81,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L117-L117" target="_blank">source</a>]
	ONOFF = 85,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L119-L119" target="_blank">source</a>]
	RECLAIM = 90,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L121-L121" target="_blank">source</a>]
	CLOAK = 95,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L123-L123" target="_blank">source</a>]
	STOCKPILE = 100,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L125-L125" target="_blank">source</a>]
	MANUALFIRE = 105,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L127-L127" target="_blank">source</a>]
	DGUN = 105,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L129-L129" target="_blank">source</a>]
	RESTORE = 110,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L131-L131" target="_blank">source</a>]
	REPEAT = 115,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L133-L133" target="_blank">source</a>]
	TRAJECTORY = 120,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L135-L135" target="_blank">source</a>]
	RESURRECT = 125,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L137-L137" target="_blank">source</a>]
	CAPTURE = 130,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L139-L139" target="_blank">source</a>]
	AUTOREPAIRLEVEL = 135,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L141-L141" target="_blank">source</a>]
	LOOPBACKATTACK = 20,

	---[<a href="https://github.com/beyond-all-reason/spring/blob/80f785f2980f15f7e1217a671b49d414f5f9498c/rts/Lua/LuaConstCMD.cpp#L143-L143" target="_blank">source</a>]
	IDLEMODE = 145
}