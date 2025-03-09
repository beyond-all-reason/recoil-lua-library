---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstCMDTYPE.cpp
---
---@meta

---Command type constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstCMDTYPE.cpp#L12-L15" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstCMDTYPE.cpp

---Note, the CMDTYPE[] table is bidirectional. That means: CMDTYPE[CMDTYPE.ICON] := "CMDTYPE_ICON"
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/9d2c24d68180fee2ab50a80a211ee9fcf8ef27b2/rts/Lua/LuaConstCMDTYPE.cpp#L17-L36" target="_blank">source</a>]
---
---@enum CMDTYPE
CMDTYPE = {
	---@type number expect 0 parameters in return
	ICON = nil,

	---@type number expect 1 parameter in return (number selected mode)
	ICON_MODE = nil,

	---@type number expect 3 parameters in return (mappos)
	ICON_MAP = nil,

	---@type number expect 4 parameters in return (mappos+radius)
	ICON_AREA = nil,

	---@type number expect 1 parameters in return (unitid)
	ICON_UNIT = nil,

	---@type number expect 1 parameters in return (unitid) or 3 parameters in return (mappos)
	ICON_UNIT_OR_MAP = nil,

	---@type number expect 3 or 6 parameters in return (middle and right side of front if a front was defined)
	ICON_FRONT = nil,

	---@type number expect 1 parameter in return (number selected option)
	COMBO_BOX = nil,

	---@type number expect 1 parameter in return (unitid) or 4 parameters in return (mappos+radius)
	ICON_UNIT_OR_AREA = nil,

	---@type number expect 1 parameter in return (unitid or Game.maxUnits+featureid) or 4 parameters in return (mappos+radius)
	ICON_UNIT_FEATURE_OR_AREA = nil,

	---@type number expect 3 parameters in return (mappos)
	ICON_BUILDING = nil,

	---@type number expect 1 parameter in return (unitid) or 3 parameters in return (mappos) or 6 parameters in return (startpos+endpos)
	ICON_UNIT_OR_RECTANGLE = nil,

	---@type number expect 1 parameter in return (number)
	NUMBER = nil,

	---@type number used with CMD_INTERNAL
	CUSTOM = nil,

	---@type number next command page used with CMD_INTERNAL
	NEXT = nil,

	---@type number previous command page used with CMD_INTERNAL
	PREV = nil
}