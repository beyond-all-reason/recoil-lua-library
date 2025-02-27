---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 1.1.2
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: rts/Lua/LuaConstGame.cpp
---
---@meta

---Game constants
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/121c0c4744b756d495be80601010b38043e1ae89/rts/Lua/LuaConstGame.cpp#L26-L29" target="_blank">source</a>]
---
---@see rts/Lua/LuaConstGame.cpp

---Game specific information
---
---[<a href="https://github.com/beyond-all-reason/spring/blob/121c0c4744b756d495be80601010b38043e1ae89/rts/Lua/LuaConstGame.cpp#L31-L115" target="_blank">source</a>]
Game = {
	---@type number
	maxUnits = nil,

	---@type number
	maxTeams = nil,

	---@type number
	maxPlayers = nil,

	---@type number Divide Game.mapSizeX or Game.mapSizeZ by this to get engine's "mapDims" coordinates. The resolution of height, yard and type maps.
	squareSize = nil,

	---@type number The resolution of metalmap (for use in API such as Spring.GetMetalAmount etc.)
	metalMapSquareSize = nil,

	---@type number
	gameSpeed = nil,

	---@type number
	startPosType = nil,

	---@type boolean
	ghostedBuildings = nil,

	---@type string
	mapChecksum = nil,

	---@type string
	modChecksum = nil,

	---@type boolean
	mapDamage = nil,

	---@type string
	mapName = nil,

	---@type string = string Game.mapHumanName
	mapDescription = nil,

	---@type number
	mapHardness = nil,

	---@type number
	mapX = nil,

	---@type number
	mapY = nil,

	---@type number in worldspace/opengl coords. Divide by Game.squareSize to get engine's "mapDims" coordinates
	mapSizeX = nil,

	---@type number in worldspace/opengl coords. Divide by Game.squareSize to get engine's "mapDims" coordinates
	mapSizeZ = nil,

	---@type number
	gravity = nil,

	---@type number
	tidal = nil,

	---@type number
	windMin = nil,

	---@type number
	windMax = nil,

	---@type number
	extractorRadius = nil,

	---@type number
	waterDamage = nil,

	---@type table Containing {def}IDs of environmental-damage sources
	envDamageTypes = nil,

	---@type string
	gameName = nil,

	---@type string
	gameShortName = nil,

	---@type string
	gameVersion = nil,

	---@type string
	gameMutator = nil,

	---@type string
	gameDesc = nil,

	---@type boolean
	requireSonarUnderWater = nil,

	---@type number
	transportAir = nil,

	---@type number
	transportShip = nil,

	---@type number
	transportHover = nil,

	---@type number
	transportGround = nil,

	---@type number
	fireAtKilled = nil,

	---@type number
	fireAtCrashing = nil,

	---@type boolean
	constructionDecay = nil,

	---@type boolean
	reclaimAllowEnemies = nil,

	---@type boolean
	reclaimAllowAllies = nil,

	---@type number
	constructionDecayTime = nil,

	---@type number
	constructionDecaySpeed = nil,

	---@type number
	multiReclaim = nil,

	---@type number
	reclaimMethod = nil,

	---@type number
	reclaimUnitMethod = nil,

	---@type number
	reclaimUnitEnergyCostFactor = nil,

	---@type number
	reclaimUnitEfficiency = nil,

	---@type number
	reclaimFeatureEnergyCostFactor = nil,

	---@type number
	repairEnergyCostFactor = nil,

	---@type number
	resurrectEnergyCostFactor = nil,

	---@type number
	captureEnergyCostFactor = nil,

	---@type table<string, integer>
	---```lua
	---    example: {
	---      ["vtol"]         = 0,  ["special"]      = 1,  ["noweapon"]     = 2,
	---      ["notair"]       = 3,  ["notsub"]       = 4,  ["all"]          = 5,
	---      ["weapon"]       = 6,  ["notship"]      = 7,  ["notland"]      = 8,
	---      ["mobile"]       = 9,  ["kbot"]         = 10, ["antigator"]    = 11,
	---      ["tank"]         = 12, ["plant"]        = 13, ["ship"]         = 14,
	---      ["antiemg"]      = 15, ["antilaser"]    = 16, ["antiflame"]    = 17,
	---      ["underwater"]   = 18, ["hover"]        = 19, ["phib"]         = 20,
	---      ["constr"]       = 21, ["strategic"]    = 22, ["commander"]    = 23,
	---      ["paral"]        = 24, ["jam"]          = 25, ["mine"]         = 26,
	---      ["kamikaze"]     = 27, ["minelayer"]    = 28, ["notstructure"] = 29,
	---      ["air"]          = 30
	---    }
	---```
	springCategories = nil,

	---@type table<string|integer, integer|string> (bidirectional)
	---```lua
	---    example: {
	---      [1]  = amphibious,   [2] = anniddm,     [3] = antibomber,
	---      [4]  = antifighter,  [5] = antiraider,  [6] = atl,
	---      [7]  = blackhydra,   [8] = bombers,     [9] = commanders,
	---      [10] = crawlingbombs, ...
	---
	---      ["amphibious"]   = 1, ["anniddm"]    = 2, ["antibomber"] = 3
	---      ["antifighter"]  = 4, ["antiraider"] = 5, ["atl"]        = 6
	---      ["blackhydra"]   = 7, ["bombers"]    = 8, ["commanders"] = 9
	---      ["crawlingbombs"]= 10, ...
	---    }
	---```
	armorTypes = nil
}