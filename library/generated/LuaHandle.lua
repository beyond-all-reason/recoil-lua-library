
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 0.0.1
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Source: LuaHandle.cpp
---
---@meta

---Callins, functions called by the Engine
---
---
---This page is future looking to unified widget/gadget (aka "addon") handler, which may yet be some way off, c.f. the changelog.
---
---Related Sourcecode: [LuaHandle.cpp](https://github.com/beyond-all-reason/spring/blob/BAR105/rts/Lua/LuaHandle.cpp)
---
---For now, to use these addons in a widget, prepend widget: and, for a gadget, prepend gadget:. For example,
---
---function widget:UnitCreated(unitID, unitDefID, unitTeam, builderID)
---...
---end
---
---Some functions may differ between (synced) gadget and widgets; those are in the [Synced - Unsynced Shared](#Synced___Unsynced_Shared) section. Essentially the reason is that all information should be available to synced (game logic controlling) gadgets, but restricted to unsynced gadget/widget (e.g. information about an enemy unit only detected via radar and not yet in LOS). In such cases the full (synced) param list is documented.
---
---Attention: some callins will only work on the unsynced portion of the gadget. Due to the type-unsafe nature of lua parsing, those callins not firing up might be hard to trace. This document will be continuously updated to properly alert about those situations.
---
---@see rts/Lua/LuaHandle.cpp

---Common
---
---@section common

---Called when the addon is (re)loaded.
function Initialize() end

---Called when the game is (re)loaded.
function LoadCode() end

---Called when the addon or the game is shutdown.
---
---@return nil
function Shutdown() end

---Called when a player issues a UI command e.g. types /foo or /luarules foo.
---
---@param msg string
---@param playerID number
function GotChatMsg(msg, playerID) end

---Called after `GamePreload` and before `GameStart`. See Lua_SaveLoad.
---
---@param zipReader table
function Load(zipReader) end

---Game
---
---@section game

---Called before the 0 gameframe.
---
---Is not called when a saved game is loaded.
function GamePreload() end

---Called upon the start of the game.
---
---Is not called when a saved game is loaded.
function GameStart() end

---Called when the game ends
---
---@param winningAllyTeams number[] list of winning allyTeams, if empty the game result was undecided (like when dropping from an host).
function GameOver(winningAllyTeams) end

---Called when the game is paused.
---
---@param playerID number
---@param paused boolean
function GamePaused(playerID, paused) end

---Called for every game simulation frame (30 per second).
---
---@param frame number Starts at frame 1
function GameFrame(frame) end

---Called at the end of every game simulation frame
---
---@param frame number Starts at frame 1
function GameFramePost(frame) end

---Called once to deliver the gameID
---
---@param gameID string encoded in hex.
function GameID(gameID) end

---Teams
---
---@section teams

---Called when a team dies (see `Spring.KillTeam`).
---
---@param teamID number
function TeamDied(teamID) end

---@param teamID number
function TeamChanged(teamID) end

---Called whenever a player's status changes e.g. becoming a spectator.
---
---@param playerID number
function PlayerChanged(playerID) end

---Called whenever a new player joins the game.
---
---@param playerID number
function PlayerAdded(playerID) end

---Called whenever a player is removed from the game.
---
---@param playerID number
---@param reason string
function PlayerRemoved(playerID, reason) end

---Units
---
---@section units

---Called at the moment the unit is created.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param builderID number?
function UnitCreated(unitID, unitDefID, unitTeam, builderID) end

---Called at the moment the unit is completed.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitFinished(unitID, unitDefID, unitTeam) end

---Called when a factory finishes construction of a unit.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param factID number
---@param factDefID number
---@param userOrders boolean
function UnitFromFactory(unitID, unitDefID, unitTeam, factID, factDefID, userOrders) end

---Called when a living unit becomes a nanoframe again.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitReverseBuilt(unitID, unitDefID, unitTeam) end

---Called when a unit being built starts decaying.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param timeSinceLastBuild number
---@param iterationPeriod number
---@param part number
function UnitConstructionDecayed(unitID, unitDefID, unitTeam, timeSinceLastBuild, iterationPeriod, part) end

---Called when a unit is destroyed.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param attackerID number
---@param attackerDefID number
---@param attackerTeam number
---@param weaponDefID number
function UnitDestroyed(unitID, unitDefID, unitTeam, attackerID, attackerDefID, attackerTeam, weaponDefID) end

---Called when a unit is transferred between teams. This is called before `UnitGiven` and in that moment unit is still assigned to the oldTeam.
---
---@param unitID integer
---@param unitDefID integer
---@param oldTeam number
---@param newTeam number
function UnitTaken(unitID, unitDefID, oldTeam, newTeam) end

---Called when a unit is transferred between teams. This is called after `UnitTaken` and in that moment unit is assigned to the newTeam.
---
---@param unitID integer
---@param unitDefID integer
---@param newTeam number
---@param oldTeam number
function UnitGiven(unitID, unitDefID, newTeam, oldTeam) end

---Called when a unit is idle (empty command queue).
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitIdle(unitID, unitDefID, unitTeam) end

---Called after when a unit accepts a command, after `AllowCommand` returns true.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param cmdID number
---@param cmdParams table
---@param options CommandOptions
---@param cmdTag number
function UnitCommand(unitID, unitDefID, unitTeam, cmdID, cmdParams, options, cmdTag) end

---Called when a unit completes a command.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param cmdID number
---@param cmdParams table
---@param options CommandOptions
---@param cmdTag number
function UnitCmdDone(unitID, unitDefID, unitTeam, cmdID, cmdParams, options, cmdTag) end

---Called when a unit is damaged (after UnitPreDamaged).
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param damage number
---@param paralyzer number
---@param weaponDefID number
---@param projectileID number
---@param attackerID number
---@param attackerDefID number
---@param attackerTeam number
function UnitDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) end

---Called when a unit changes its stun status.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param stunned boolean
function UnitStunned(unitID, unitDefID, unitTeam, stunned) end

---Called when a unit gains experience greater or equal to the minimum limit set by calling `Spring.SetExperienceGrade`.
---
---Should be called more reliably with small values of experience grade.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param experience number
---@param oldExperience number
function UnitExperience(unitID, unitDefID, unitTeam, experience, oldExperience) end

---Called when a unit's harvestStorage is full (according to its unitDef's entry).
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitHarvestStorageFull(unitID, unitDefID, unitTeam) end

---Called when a unit emits a seismic ping.
---
---See `seismicSignature`.
---
---@param x number
---@param y number
---@param z number
---@param strength number
---@param allyTeam integer
---@param unitID integer
---@param unitDefID integer
function UnitSeismicPing(x, y, z, strength, allyTeam, unitID, unitDefID) end

---Called when a unit enters radar of an allyteam.
---
---Also called when a unit enters LOS without any radar coverage.
---
---@param unitID integer
---@param unitTeam integer
---@param allyTeam integer
---@param unitDefID integer
function UnitEnteredRadar(unitID, unitTeam, allyTeam, unitDefID) end

---Called when a unit enters LOS of an allyteam.
---
---Its called after the unit is in LOS, so you can query that unit.
---
---@param unitID integer
---@param unitTeam integer
---@param allyTeam integer who's LOS the unit entered.
---@param unitDefID integer
function UnitEnteredLos(unitID, unitTeam, allyTeam, unitDefID) end

---Called when a unit leaves radar of an allyteam.
---
---Also called when a unit leaves LOS without any radar coverage.
---For widgets, this is called just after a unit leaves radar coverage, so
---widgets cannot get the position of units that left their radar.
---
---@param unitID integer
---@param unitTeam integer
---@param allyTeam integer
---@param unitDefID integer
function UnitLeftRadar(unitID, unitTeam, allyTeam, unitDefID) end

---Called when a unit leaves LOS of an allyteam.
---
---For widgets, this one is called just before the unit leaves los, so you can still get the position of a unit that left los.
---
---@param unitID integer
---@param unitTeam integer
---@param allyTeam integer
---@param unitDefID integer
function UnitLeftLos(unitID, unitTeam, allyTeam, unitDefID) end

---Transport
---
---@section transport

---Called when a unit is loaded by a transport.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param transportID integer
---@param transportTeam integer
function UnitLoaded(unitID, unitDefID, unitTeam, transportID, transportTeam) end

---Called when a unit is unloaded by a transport.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param transportID integer
---@param transportTeam integer
function UnitUnloaded(unitID, unitDefID, unitTeam, transportID, transportTeam) end

---Unit Interactions
---
---@section unit_interactions

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitEnteredUnderwater(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitEnteredWater(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitLeftAir(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitLeftUnderwater(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitLeftWater(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitEnteredAir(unitID, unitDefID, unitTeam) end

---Called when a unit cloaks.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitCloaked(unitID, unitDefID, unitTeam) end

---Called when a unit decloaks.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitDecloaked(unitID, unitDefID, unitTeam) end

---Called when two units collide.
---
---Both units must be registered with `Script.SetWatchUnit`.
---
---@param colliderID number
---@param collideeID number
function UnitUnitCollision(colliderID, collideeID) end

---Called when a unit collides with a feature.
---
---The unit must be registered with `Script.SetWatchUnit` and the feature registered with `Script.SetWatchFeature`.
---
---@param colliderID number
---@param collideeID number
function UnitFeatureCollision(colliderID, collideeID) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitMoveFailed(unitID, unitDefID, unitTeam) end

---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function UnitArrivedAtGoal(unitID, unitDefID, unitTeam) end

---Called just before a unit is invalid, after it finishes its death animation.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
function RenderUnitDestroyed(unitID, unitDefID, unitTeam) end

---Features
---
---@section features

---Called when a feature is created.
---
---@param featureID number
---@param allyTeamID number
function FeatureCreated(featureID, allyTeamID) end

---Called when a feature is destroyed.
---
---@param featureID number
---@param allyTeamID number
function FeatureDestroyed(featureID, allyTeamID) end

---Called when a feature is damaged.
---
---@param featureID number
---@param featureDefID number
---@param featureTeam number
---@param damage number
---@param weaponDefID number
---@param projectileID number
---@param attackerID number
---@param attackerDefID number
---@param attackerTeam number
function FeatureDamaged(featureID, featureDefID, featureTeam, damage, weaponDefID, projectileID, attackerID, attackerDefID, attackerTeam) end

---Projectiles
---
---@section projectiles
---
---The following Callins are only called for weaponDefIDs registered via Script.SetWatchWeapon.

---Called when the projectile is created.
---
---Note that weaponDefID is missing if the projectile is spawned as part of a burst, but `Spring.GetProjectileDefID` and `Spring.GetProjectileName` still work in callin scope using proID.
---
---@param proID number
---@param proOwnerID number
---@param weaponDefID number
function ProjectileCreated(proID, proOwnerID, weaponDefID) end

---Called when the projectile is destroyed.
---
---@param proID number
---@param ownerID number
---@param proWeaponDefID number
function ProjectileDestroyed(proID, ownerID, proWeaponDefID) end

---Called when an explosion occurs.
---
---@param weaponDefID number
---@param px number
---@param py number
---@param pz number
---@param attackerID number
---@param projectileID number
---@return boolean noGfx if then no graphical effects are drawn by the engine for this explosion.
function Explosion(weaponDefID, px, py, pz, attackerID, projectileID) end

---Called when a units stockpile of weapons increases or decreases.
---
---@param unitID integer
---@param unitDefID integer
---@param unitTeam integer
---@param weaponNum integer
---@param oldCount integer
---@param newCount integer
function StockpileChanged(unitID, unitDefID, unitTeam, weaponNum, oldCount, newCount) end

---Receives messages from unsynced sent via `Spring.SendLuaRulesMsg` or `Spring.SendLuaUIMsg`.
---
---@param msg string
---@param playerID number
function RecvLuaMsg(msg, playerID) end

---Called when a chat command '/save' or '/savegame' is received.
---
---@param zip table a userdatum representing the savegame zip file. See Lua_SaveLoad.
function Save(zip) end

---Called when the unsynced copy of the height-map is altered.
---
---@return number x1
---@return number z1
---@return number x2
---@return number z2
function UnsyncedHeightMapUpdate() end

---Called for every draw frame (including when the game is paused) and at least once per sim frame except when catching up.
---
---@param dt number the time since the last update.
function Update(dt) end

---Called whenever the window is resized.
---
---@param viewSizeX number
---@param viewSizeY number
function ViewResize(viewSizeX, viewSizeY) end

---Called whenever fonts are updated. Signals the game display lists
---and other caches should be discarded.
---
---Gets called before other Update and Draw callins.
function FontsChanged() end

function SunChanged() end

---Used to set the default command when a unit is selected. First parameter is the type of the object pointed at (either "unit or "feature") and the second is its unitID or featureID respectively.
---
---@param type string "unit" | "feature"
---@param id integer unitID | featureID
function DefaultCommand(type, id) end

---Draw* Functions
---
---@section draw
---
---Inside the Draw* functions, you can use the Lua OpenGL Api to draw graphics.
---
---Avoid doing heavy calculations inside these callins; ideally, do the calculations elsewhere and use Draw callins only for drawing.

---Use this callin to update textures, shaders, etc.
---
---Doesn't render to screen!
---Also available to LuaMenu.
function DrawGenesis() end

---Spring draws command queues, 'map stuff', and map marks.
function DrawWorld() end

---Spring draws units, features, some water types, cloaked units, and the sun.
function DrawWorldPreUnit() end

---Called before decals are drawn
function DrawPreDecals() end

function DrawWaterPost() end

---Invoked after semi-transparent shadows pass is about to conclude
---
---This callin has depth and color buffer of shadowmap bound via FBO as well as the FFP state to do "semi-transparent" shadows pass (traditionally only used to draw shadows of shadow casting semi-transparent particles). Can be used to draw nice colored shadows.
function DrawShadowPassTransparent() end

function DrawWorldShadow() end

function DrawWorldReflection() end

function DrawWorldRefraction() end

---Runs at the start of the forward pass when a custom map shader has been assigned via `Spring.SetMapShader` (convenient for setting uniforms).
function DrawGroundPreForward() end

function DrawGroundPostForward() end

---Runs at the start of the deferred pass when a custom map shader has been assigned via `Spring.SetMapShader` (convenient for setting uniforms).
function DrawGroundPreDeferred() end

function DrawGroundDeferred() end

---This runs at the end of its respective deferred pass.
---
---Allows proper frame compositing (with ground flashes/decals/foliage/etc, which are drawn between it and `DrawWorldPreUnit`) via `gl.CopyToTexture`.
function DrawGroundPostDeferred() end

---Runs at the end of the unit deferred pass.
---
---Informs Lua code it should make use of the $model_gbuffer_* textures before another pass overwrites them (and to allow proper blending with e.g. cloaked objects which are drawn between these events and DrawWorld via gl.CopyToTexture). N.B. The *PostDeferred events are only sent (and only have a real purpose) if forward drawing is disabled.
function DrawUnitsPostDeferred() end

---Runs at the end of the feature deferred pass to inform Lua code it should make use of the $model_gbuffer_* textures before another pass overwrites them (and to allow proper blending with e.g. cloaked objects which are drawn between these events and DrawWorld via gl.CopyToTexture). N.B. The *PostDeferred events are only sent (and only have a real purpose) if forward drawing is disabled.
function DrawFeaturesPostDeferred() end

function DrawShadowUnitsLua() end

function DrawShadowFeaturesLua() end

---DrawWorldPreParticles is called multiples times per draw frame.
---Each call has a different permutation of values for drawAboveWater, drawBelowWater, drawReflection, and drawRefraction.
---
---@param drawAboveWater boolean
---@param drawBelowWater boolean
---@param drawReflection boolean
---@param drawRefraction boolean
function DrawWorldPreParticles(drawAboveWater, drawBelowWater, drawReflection, drawRefraction) end

---Also available to LuaMenu.
---
---@param viewSizeX number
---@param viewSizeY number
function DrawScreen(viewSizeX, viewSizeY) end

---@param viewSizeX number
---@param viewSizeY number
function DrawScreenEffects(viewSizeX, viewSizeY) end

---Similar to DrawScreenEffects, this can be used to alter the contents of a frame after it has been completely rendered (i.e. World, MiniMap, Menu, UI).
---
---@param viewSizeX number
---@param viewSizeY number
function DrawScreenPost(viewSizeX, viewSizeY) end

---@param sx number relative to the minimap's position and scale.
---@param sy number relative to the minimap's position and scale.
function DrawInMinimap(sx, sy) end

---@param sx number relative to the minimap's position and scale.
---@param sy number relative to the minimap's position and scale.
function DrawInMinimapBackground(sx, sy) end

---Called every 60 frames, calculating delta between `GameFrame` and `GameProgress`.
---
---Can give an ETA about catching up with simulation for mid-game join players.
---
---@param serverFrameNum integer
function GameProgress(serverFrameNum) end

---Called when the keymap changes
---
---Can be caused due to a change in language or keyboard
function KeyMapChanged() end

---Input
---
---@section input

---Key Modifier Params
---
---@class KeyModifiers
---@field right boolean Right mouse key pressed
---@field alt boolean Alt key pressed
---@field ctrl boolean Ctrl key pressed
---@field shift boolean Shift key pressed
local KeyModifiers = {}

---Called repeatedly when a key is pressed down.
---
---Return true if you don't want other callins or the engine to also receive this keypress. A list of key codes can be seen at the SDL wiki.
---
---@param keyCode number
---@param mods KeyModifiers
---@param isRepeat boolean If you want an action to occur only once check for isRepeat == false.
---@param label boolean the name of the key
---@param utf32char number (deprecated) always 0
---@param scanCode number
---@param actionList table the list of actions for this keypress
---@return boolean halt whether to halt the chain for consumers of the keypress
function KeyPress(keyCode, mods, isRepeat, label, utf32char, scanCode, actionList) end

---Called when the key is released.
---
---@param keyCode number
---@param mods KeyModifiers
---@param label boolean the name of the key
---@param utf32char number (deprecated) always 0
---@param scanCode number
---@param actionList table the list of actions for this keyrelease
---@return boolean
function KeyRelease(keyCode, mods, label, utf32char, scanCode, actionList) end

---Called whenever a key press results in text input.
---
---@param utf8char string
function TextInput(utf8char) end

---@param utf8 string
---@param start number
---@param length number
function TextEditing(utf8, start, length) end

---Called when a mouse button is pressed.
---
---The button parameter supports up to 7 buttons. Must return true for `MouseRelease` and other functions to be called.
---
---@param x number
---@param y number
---@param button number
---@return boolean becomeMouseOwner
function MousePress(x, y, button) end

---Called when a mouse button is released.
---
---Please note that in order to have Spring call `Spring.MouseRelease`, you need to have a `Spring.MousePress` call-in in the same addon that returns true.
---
---@param x number
---@param y number
---@param button number
---@return boolean becomeMouseOwner
function MouseRelease(x, y, button) end

---Called when the mouse is moved.
---
---@param x number final x position
---@param y number final y position
---@param dx number distance travelled in x
---@param dy number distance travelled in y
---@param button number
function MouseMove(x, y, dx, dy, button) end

---Called when the mouse wheel is moved.
---
---@param up boolean the direction
---@param value number the amount travelled
function MouseWheel(up, value) end

---Called every `Update`.
---
---Must return true for `Mouse*` events and `Spring.GetToolTip` to be called.
---
---@param x number
---@param y number
---@return boolean isAbove
function IsAbove(x, y) end

---Called when `Spring.IsAbove` returns true.
---
---@param x number
---@param y number
---@return string tooltip
function GetTooltip(x, y) end

---Called when a command is issued.
---
---@param nil|number cmdID
---@param nil|number cmdType
function ActiveCommandChanged(nil|number, nil|number) end

---Called when a command is issued.
---
---@param cmdID integer
---@param cmdParams table
---@param options CommandOptions
---@return boolean Returning true deletes the command and does not send it through the network.
function CommandNotify(cmdID, cmdParams, options) end

---Called when text is entered into the console (e.g. `Spring.Echo`).
---
---@param msg string
---@param priority integer
function AddConsoleLine(msg, priority) end

---Called when a unit is added to or removed from a control group.
---
---@param groupID number
function GroupChanged(groupID) end

---@param ttType string "unit" | "feature" | "ground" | "selection"
---@param data1 number unitID | featureID | posX
---@param data2 number? posY
---@param data3 number? posZ
---@return string newTooltip
function WorldTooltip(ttType, data1, data2, data3) end

---@param playerID number
---@param type string "point" | "line" | "erase"
---@param posX number
---@param posY number
---@param posZ number
---@param data4 string|number point: label, erase: radius, line: pos2X
---@param pos2Y number? when type is line
---@param pos2Z number? when type is line
function MapDrawCmd(playerID, type, posX, posY, posZ, data4, pos2Y, pos2Z) end

---@param state string
---@param ready boolean
---@param playerStates table
---@return boolean success
---@return boolean newReady
function GameSetup(state, ready, playerStates) end

---@param aiTeam integer
---@param dataStr string
function RecvSkirmishAIMessage(aiTeam, dataStr) end

---Downloads
---
---@section downloads

---Called when a Pr-downloader download is queued
---
---@param id number
---@param name string
---@param type string
function DownloadQueued(id, name, type) end

---Called when a Pr-downloader download is started via VFS.DownloadArchive.
---
---@param id number
function DownloadStarted(id) end

---Called when a Pr-downloader download finishes successfully.
---
---@param id number
function DownloadFinished(id) end

---Called when a Pr-downloader download fails to complete.
---
---@param id number
---@param errorID number
function DownloadFailed(id, errorID) end

---Called incrementally during a Pr-downloader download.
---
---@param id number
---@param downloaded number
---@param total number
function DownloadProgress(id, downloaded, total) end