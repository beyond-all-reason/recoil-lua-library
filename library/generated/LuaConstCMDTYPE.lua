---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 3.0.0
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstCMDTYPE.cpp
---
---@meta

---Command type constants
---
---Note, the `CMDTYPE[]` table is bidirectional. That means: `CMDTYPE[CMDTYPE.ICON] := "CMDTYPE_ICON"`
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L11-L17" target="_blank">source</a>]
---
---@enum CMDTYPE
CMDTYPE = {
	---Expect 0 parameters in return.
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L22-L22" target="_blank">source</a>]
	---
	---@type integer
	ICON = nil,

	---Expect 1 parameter in return (number selected mode).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L24-L24" target="_blank">source</a>]
	---
	---@type integer
	ICON_MODE = nil,

	---Expect 3 parameters in return (mappos).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L26-L26" target="_blank">source</a>]
	---
	---@type integer
	ICON_MAP = nil,

	---Expect 4 parameters in return (mappos+radius).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L28-L28" target="_blank">source</a>]
	---
	---@type integer
	ICON_AREA = nil,

	---Expect 1 parameters in return (unitid).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L30-L30" target="_blank">source</a>]
	---
	---@type integer
	ICON_UNIT = nil,

	---Expect 1 parameters in return (unitid) or 3 parameters in return (mappos).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L32-L32" target="_blank">source</a>]
	---
	---@type integer
	ICON_UNIT_OR_MAP = nil,

	---Expect 3 or 6 parameters in return (middle and right side of front if a front was defined).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L34-L34" target="_blank">source</a>]
	---
	---@type integer
	ICON_FRONT = nil,

	---Expect 1 parameter in return (unitid) or 4 parameters in return (mappos+radius).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L36-L36" target="_blank">source</a>]
	---
	---@type integer
	ICON_UNIT_OR_AREA = nil,

	---Expect command page used with `CMD_INTERNAL`.
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L38-L38" target="_blank">source</a>]
	---
	---@type integer
	NEXT = nil,

	---Expect command page used with `CMD_INTERNAL`.
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L40-L40" target="_blank">source</a>]
	---
	---@type integer
	PREV = nil,

	---Expect 1 parameter in return (unitid or Game.maxUnits+featureid) or 4 parameters in return (mappos+radius).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L42-L42" target="_blank">source</a>]
	---
	---@type integer
	ICON_UNIT_FEATURE_OR_AREA = nil,

	---Expect 3 parameters in return (mappos).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L44-L44" target="_blank">source</a>]
	---
	---@type integer
	ICON_BUILDING = nil,

	---Expect with `CMD_INTERNAL`.
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L46-L46" target="_blank">source</a>]
	---
	---@type integer
	CUSTOM = nil,

	---Expect 1 parameter in return (unitid) or 3 parameters in return (mappos) or 6 parameters in return (startpos+endpos).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L48-L48" target="_blank">source</a>]
	---
	---@type integer
	ICON_UNIT_OR_RECTANGLE = nil,

	---Expect 1 parameter in return (number).
	---
	---[<a href="https://github.com/beyond-all-reason/spring/blob/1ec38af1dd67e6f70ec34a7c7e754b122d360b2c/rts/Lua/LuaConstCMDTYPE.cpp#L50-L50" target="_blank">source</a>]
	---
	---@type integer
	NUMBER = nil
}