
---!!! DO NOT MANUALLY EDIT THIS FILE !!!
---Generated by lua-doc-extractor 0.0.1
---https://github.com/rhys-vdw/lua-doc-extractor
---
---Date: Sun, 24 Nov 2024 02:31:33 GMT
---Source: LuaUnsyncedCtrl.cpp
---
---@meta

---Callouts to set state
---
---@see rts/Lua/LuaUnsyncedCtrl.cpp

---Ingame Console
---
---@section console

---Send a ping request to the server
---
---@param pingTag number
---@return nil
function Spring.Ping(pingTag) end

---Useful for debugging.
---
---Prints values in the spring chat console.
---Hint: the default print() writes to STDOUT.
---
---@param arg any
---@param ... any
---@return nil
function Spring.Echo(arg, ...) end

---@alias LogLevel
---| integer
---| "debug"   # LOG.DEBUG
---| "info"    # LOG.INFO
---| "notice"  # LOG.NOTICE (engine default)
---| "warning" # LOG.WARNING
---| "error"   # LOG.ERROR
---| "fatal"   # LOG.FATAL

---@param section string
---@param logLevel LogLevel? (Default: "notice")
---@param ... string messages
---@return nil
function Spring.Log(section, logLevel, ...) end

---@param commands string[]
function Spring.SendCommands(commands) end

---@param command string
---@param ... string additional commands
---@return nil
function Spring.SendCommands(command, ...) end

---Messages
---
---@section messages

---@param message string
---@return nil
function Spring.SendMessage(message) end

---@param message string `<PLAYER#>` (with # being a playerid) inside the string will be replaced with the players name - i.e. : Spring.SendMessage ("`<PLAYER1>` did something") might display as "ProRusher did something"
---@return nil
function Spring.SendMessageToSpectators(message) end

---@param playerID number
---@param message string
---@return nil
function Spring.SendMessageToPlayer(playerID, message) end

---@param teamID number
---@param message string
---@return nil
function Spring.SendMessageToTeam(teamID, message) end

---@param allyID number
---@param message string
---@return nil
function Spring.SendMessageToAllyTeam(allyID, message) end

---Sounds
---
---@section sounds

---Loads a SoundDefs file, the format is the same as in `gamedata/sounds.lua`.
---
---@param soundfile string
---@return boolean success
function Spring.LoadSoundDef(soundfile) end

---@alias SoundChannel
---| "general" # 0
---| "battle" # Same as `"sfx" | 1`
---| "sfx" # Same as `"battle" | 1`
---| "unitreply" # Same as `"voice" | 2`
---| "voice" # Same as `"unitreply" | 2`
---| "userinterface" # Same as "ui" | 3`
---| "ui" # Same as "userinterface" | 3`
---| 0 # General
---| 1 # SFX
---| 2 # Voice
---| 3 # User interface

---@param soundfile string
---@param volume number? (Default: 1.0)
---@param posx number?
---@param posy number?
---@param posz number?
---@param speedx number?
---@param speedy number?
---@param speedz number?
---@param channel SoundChannel? (Default: `0|"general"`)
---@return boolean playSound
function Spring.PlaySoundFile(soundfile, volume, posx, posy, posz, speedx, speedy, speedz, channel) end

---Allows to play an Ogg Vorbis (.OGG) and mp3 compressed sound file.
---
---Multiple sound streams may be played at once.
---
---@param oggfile string
---@param volume number? (Default: 1.0)
---@param enqueue boolean?
---@return boolean success
function Spring.PlaySoundStream(oggfile, volume, enqueue) end

---Terminates any SoundStream currently running.
---
---@return nil
function Spring.StopSoundStream() end

---Pause any SoundStream currently running.
---
---@return nil
function Spring.PauseSoundStream() end

---Set volume for SoundStream
---
---@param volume number
---@return nil
function Spring.SetSoundStreamVolume(volume) end

function Spring.SetSoundEffectParams() end

---@param cmdID number
---@param posX number
---@param posY number
---@param posZ number
---@return nil
function Spring.AddWorldIcon(cmdID, posX, posY, posZ) end

---@param text string
---@param posX number
---@param posY number
---@param posZ number
---@return nil
function Spring.AddWorldText(text, posX, posY, posZ) end

---@param unitDefID number
---@param posX number
---@param posY number
---@param posZ number
---@param teamID number
---@param facing number
---@return nil
function Spring.AddWorldUnit(unitDefID, posX, posY, posZ, teamID, facing) end

---@param unitID number
---@return nil
function Spring.DrawUnitCommands(unitID) end

---@param units table array of unit ids
---@param tableOrArray boolean? (Default: false] when true `units` is interpreted as a table in the format `{ [unitID) = arg1, ... }`
---@return nil
function Spring.DrawUnitCommands(units, tableOrArray) end

---Camera
---
---@section camera

---Parameters for camera state
---
---Highly dependent on the type of the current camera controller
---
---@class camState
---@field name "ta"|"spring"|"rot"|"ov"|"free"|"fps"|"dummy"
---@field mode number the camera mode: 0 (fps), 1 (ta), 2 (spring), 3 (rot), 4 (free), 5 (ov), 6 (dummy)
---@field fov number
---@field px number Position X of the ground point in screen center
---@field py number Position Y of the ground point in screen center
---@field pz number Position Z of the ground point in screen center
---@field dx number Camera direction vector X
---@field dy number Camera direction vector Y
---@field dz number Camera direction vector Z
---@field rx number Camera rotation angle on X axis (spring)
---@field ry number Camera rotation angle on Y axis (spring)
---@field rz number Camera rotation angle on Z axis (spring)
---@field angle number Camera rotation angle on X axis (aka tilt/pitch) (ta)
---@field flipped number -1 for when south is down, 1 for when north is down (ta)
---@field dist number Camera distance from the ground (spring)
---@field height number Camera distance from the ground (ta)
---@field oldHeight number Camera distance from the ground, cannot be changed (rot)
local camState = {}

---For Spring Engine XZ represents horizontal, from north west corner of map and Y vertical, from water level and rising.
---
---@param x number
---@param y number
---@param z number
---@param transTime number?
---@return nil
function Spring.SetCameraTarget(x, y, z, transTime) end

---@param posX number? (Default: 0)
---@param posY number? (Default: 0)
---@param posZ number? (Default: 0)
---@param tiltX number? (Default: 0)
---@param tiltY number? (Default: 0)
---@param tiltZ number? (Default: 0)
---@return nil
function Spring.SetCameraOffset(posX, posY, posZ, tiltX, tiltY, tiltZ) end

---Sets camera state
---
---The fields in `camState` must be consistent with the name/mode and current/new camera mode
---
---@param camState camState
---@param transitionTime number? (Default: 0) in nanoseconds
---@param transitionTimeFactor number?
---multiplicative factor applied to this and all subsequent transition times for
---this camera mode.
---
---Defaults to "CamTimeFactor" springsetting unless set previously.
---@param transitionTimeExponent number?
---tween factor applied to this and all subsequent transitions for this camera
---mode.
---
---Defaults to "CamTimeExponent" springsetting unless set previously.
---@return boolean set
function Spring.SetCameraState(camState, transitionTime, transitionTimeFactor, transitionTimeExponent) end

---Runs Dolly Camera
---
---@param runtime number in milliseconds
---@return nil
function Spring.RunDollyCamera(runtime) end

---Pause Dolly Camera
---
---@param fraction number fraction of the total runtime to pause at, 0 to 1 inclusive. A null value pauses at current percent
---@return nil
function Spring.PauseDollyCamera(fraction) end

---Resume Dolly Camera
---
---@return nil
function Spring.ResumeDollyCamera() end

---Sets Dolly Camera Position
---
---@param x number
---@param y number
---@param z number
---@return nil
function Spring.SetDollyCameraPosition(x, y, z) end

---Sets Dolly Camera movement Curve
---
---@param degree number
---@param cpoints table NURBS control point positions {{x,y,z,weight}, ...}
---@param knots table
---@return nil
function Spring.SetDollyCameraCurve(degree, cpoints, knots) end

---Sets Dolly Camera movement mode
---
---@param mode number 1 static position, 2 nurbs curve
---@return nil
function Spring.SetDollyCameraMode(mode) end

---Sets Dolly Camera movement curve to world relative or look target relative
---
---@param relativeMode number 1 world, 2 look target
---@return nil
function Spring.SetDollyCameraRelativeMode(relativeMode) end

---Sets Dolly Camera Look Curve
---
---@param degree number
---@param cpoints table NURBS control point positions {{x,y,z,weight}, ...}
---@param knots table
---@return nil
function Spring.SetDollyCameraLookCurve(degree, cpoints, knots) end

---Sets Dolly Camera Look Position
---
---@param x number
---@param y number
---@param z number
---@return nil
function Spring.SetDollyCameraLookPosition(x, y, z) end

---Sets target unit for Dolly Camera to look towards
---
---@param unitID number the unit to look at
---@return nil
function Spring.SetDollyCameraLookUnit(unitID) end

---Unit Selection
---
---@section unit_selection

---Selects a single unit
---
---@param unitID number or nil
---@param append boolean? (Default: false) append to current selection
---@return nil
function Spring.SelectUnit(unitID, append) end

---@param unitID number
---@return nil
function Spring.DeselectUnit(unitID) end

---Deselects multiple units.
---
---@param unitIDs table<any, integer> Table with unit IDs as value.
---@return nil
function Spring.DeselectUnitArray(unitIDs) end

---Deselects multiple units.
---
---@param unitMap table<integer, any> Table with unit IDs as keys.
---@return nil
function Spring.DeselectUnitMap(unitMap) end

---Selects multiple units, or appends to selection. Accepts a table with unitIDs as values
---
---@param unitMap table<any, integer> Table with unit IDs as values.
---@param append boolean? (Default: false) append to current selection
---@return nil
function Spring.SelectUnitArray(unitMap, append) end

---Selects multiple units, or appends to selection. Accepts a table with unitIDs as keys
---
---@param unitMap table<integer, any> Table with unit IDs as keys.
---@param append boolean? (Default: false) append to current selection
---@return nil
function Spring.SelectUnitMap(unitMap, append) end

---Lighting
---
---@section lighting

---Parameters for lighting
---
---@class LightParams
---@field position { px: number, py: number, pz: number }
---@field direction { dx: number, dy: number, dz: number }
---@field ambientColor { red: number, green: number, blue: number }
---@field diffuseColor { red: number, green: number, blue: number }
---@field specularColor { red: number, green: number, blue: number }
---@field intensityWeight { ambientWeight: number, diffuseWeight: number, specularWeight: number }
---@field ambientDecayRate { ambientRedDecay: number, ambientGreenDecay: number, ambientBlueDecay: number }
---Per-frame decay of `ambientColor` (spread over TTL frames)
---@field diffuseDecayRate { diffuseRedDecay: number, diffuseGreenDecay: number, diffuseBlueDecay: number }
---Per-frame decay of `diffuseColor` (spread over TTL frames)
---@field specularDecayRate { specularRedDecay: number, specularGreenDecay: number, specularBlueDecay: number }
---Per-frame decay of `specularColor` (spread over TTL frames)
---@field decayFunctionType { ambientDecayType: number, diffuseDecayType: number, specularDecayType: number }
---If value is `0.0` then the `*DecayRate` values will be interpreted as linear, otherwise exponential.
---@field radius number
---@field fov number
---@field ttl number
---@field priority number
---@field ignoreLOS boolean
local LightParams = {}

---
---requires MaxDynamicMapLights > 0
---
---@param lightParams LightParams
---@return integer lightHandle
function Spring.AddMapLight(lightParams) end

---
---requires MaxDynamicMapLights > 0
---
---@param lightParams LightParams
---@return number lightHandle
function Spring.AddModelLight(lightParams) end

---@param lightHandle number
---@param lightParams LightParams
---@return boolean success
function Spring.UpdateMapLight(lightHandle, lightParams) end

---@param lightHandle number
---@param lightParams LightParams
---@return boolean success
function Spring.UpdateModelLight(lightHandle, lightParams) end

function Spring.AddLightTrackingTarget() end

---Set a map-illuminating light to start/stop tracking the position of a moving object (unit or projectile)
---
---@param lightHandle number
---@param unitOrProjectileID number
---@param enableTracking boolean
---@param unitOrProjectile boolean
---@return boolean success
function Spring.SetMapLightTrackingState(lightHandle, unitOrProjectileID, enableTracking, unitOrProjectile) end

---Set a model-illuminating light to start/stop tracking the position of a moving object (unit or projectile)
---
---@param lightHandle number
---@param unitOrProjectileID number
---@param enableTracking boolean
---@param unitOrProjectile boolean
---@return boolean success
function Spring.SetModelLightTrackingState(lightHandle, unitOrProjectileID, enableTracking, unitOrProjectile) end

---Ingame Console
---
---@section console

---
---The ID's must refer to valid programs returned by `gl.CreateShader`.
---Passing in a value of 0 will cause the respective shader to revert back to its engine default.
---Custom map shaders that declare a uniform ivec2 named "texSquare" can sample from the default diffuse texture(s), which are always bound to TU 0.
---
---@param standardShaderID number
---@param deferredShaderID number
---@return nil
function Spring.SetMapShader(standardShaderID, deferredShaderID) end

---@param texSqrX number
---@param texSqrY number
---@param luaTexName string
---@return boolean success
function Spring.SetMapSquareTexture(texSqrX, texSqrY, luaTexName) end

---@param texType string
---@param texName string
---@return boolean success
---@usage Spring.SetMapShadingTexture("$ssmf_specular", "name_of_my_shiny_texture")
function Spring.SetMapShadingTexture(texType, texName) end

---@param texName string
---@return nil
function Spring.SetSkyBoxTexture(texName) end

---Unit custom rendering
---
---@section unitcustomrendering

---@param unitID number
---@param noDraw boolean
---@return nil
function Spring.SetUnitNoDraw(unitID, noDraw) end

---@param unitID number
---@param drawMask number
---@return nil
function Spring.SetUnitEngineDrawMask(unitID, drawMask) end

---@param unitID number
---@param alwaysUpdateMatrix boolean
---@return nil
function Spring.SetUnitAlwaysUpdateMatrix(unitID, alwaysUpdateMatrix) end

---@param unitID number
---@param unitNoMinimap boolean
---@return nil
function Spring.SetUnitNoMinimap(unitID, unitNoMinimap) end

---@param unitID number
---@param unitNoSelect boolean whether unit can be selected or not
---@return nil
function Spring.SetUnitNoSelect(unitID, unitNoSelect) end

---@param unitID number
---@param unitLeaveTracks boolean whether unit leaves tracks on movement
---@return nil
function Spring.SetUnitLeaveTracks(unitID, unitLeaveTracks) end

---@param unitID number
---@param featureID number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@param vType number
---@param tType number
---@param Axis number
---@return nil
function Spring.SetUnitSelectionVolumeData(unitID, featureID, scaleX, scaleY, scaleZ, offsetX, offsetY, offsetZ, vType, tType, Axis) end

---Features
---
---@section features

---@param featureID number
---@param noDraw boolean
---@return nil
function Spring.SetFeatureNoDraw(featureID, noDraw) end

---@param featureID number
---@param engineDrawMask number
---@return nil
function Spring.SetFeatureEngineDrawMask(featureID, engineDrawMask) end

---@param featureID number
---@param alwaysUpdateMat number
---@return nil
function Spring.SetFeatureAlwaysUpdateMatrix(featureID, alwaysUpdateMat) end

---Control whether a feature will fade or not when zoomed out.
---
---@param featureID number
---@param allow boolean
---@return nil
function Spring.SetFeatureFade(featureID, allow) end

---@param featureID number
---@param scaleX number
---@param scaleY number
---@param scaleZ number
---@param offsetX number
---@param offsetY number
---@param offsetZ number
---@param vType number
---@param tType number
---@param Axis number
---@return nil
function Spring.SetFeatureSelectionVolumeData(featureID, scaleX, scaleY, scaleZ, offsetX, offsetY, offsetZ, vType, tType, Axis) end

---Unit Icons
---
---@section unit_icons

---@param iconName string
---@param texFile string
---@param size number?
---@param dist number?
---@param radAdjust number?
---@return boolean added
function Spring.AddUnitIcon(iconName, texFile, size, dist, radAdjust) end

---@param iconName string
---@return boolean? freed
function Spring.FreeUnitIcon(iconName) end

---@param unitID number
---@param drawIcon boolean
---@return nil
function Spring.UnitIconSetDraw(unitID, drawIcon) end

---@param unitDefID number
---@param iconName string
---@return nil
function Spring.SetUnitDefIcon(unitDefID, iconName) end

---@param unitDefID number
---@param image string luaTexture|texFile
---@return nil
function Spring.SetUnitDefImage(unitDefID, image) end

---Virtual File System
---
---@section vfs
---
---Prefer using `VFS` whenever possible

---@param modfile string
---@return boolean extracted
function Spring.ExtractModArchiveFile(modfile) end

---@param path string
---@return boolean? dirCreated
function Spring.CreateDir(path) end

---@param narr number hint for count of array elements
---@param nrec number hint for count of record elements
---@return table
function Spring.AllocateTable(narr, nrec) end

---GUI
---
---@section gui

---@param action string
---@param actionExtra string?
---@return boolean? commandSet
function Spring.SetActiveCommand(action, actionExtra) end

---@param cmdIndex number
---@param button number? (Default: 1)
---@param leftClick boolean?
---@param rightClick boolean?
---@param alt boolean?
---@param ctrl boolean?
---@param meta boolean?
---@param shift boolean?
---@return boolean? commandSet
function Spring.SetActiveCommand(cmdIndex, button, leftClick, rightClick, alt, ctrl, meta, shift) end

---@param config string
---@return nil
function Spring.LoadCmdColorsConfig(config) end

---@param config string
---@return nil
function Spring.LoadCtrlPanelConfig(config) end

---@return nil
function Spring.ForceLayoutUpdate() end

---Disables the "Selected Units x" box in the GUI.
---
---@param enable boolean
---@return nil
function Spring.SetDrawSelectionInfo(enable) end

---@param state boolean
---@return nil
function Spring.SetBoxSelectionByEngine(state) end

---@param teamID number
---@param r number
---@param g number
---@param b number
---@return nil
function Spring.SetTeamColor(teamID, r, g, b) end

---Changes/creates the cursor of a single CursorCmd.
---
---@param cmdName string
---@param iconFileName string not the full filename, instead it is like this:
---Wanted filename: Anims/cursorattack_0.bmp
---=> iconFileName: cursorattack
---@param overwrite boolean? (Default: true)
---@param hotSpotTopLeft boolean? (Default: false)
---@return boolean? assigned
function Spring.AssignMouseCursor(cmdName, iconFileName, overwrite, hotSpotTopLeft) end

---Mass replace all occurrences of the cursor in all CursorCmds.
---
---@param oldFileName string
---@param newFileName string
---@param hotSpotTopLeft boolean? (Default: false)
---@return boolean? assigned
function Spring.ReplaceMouseCursor(oldFileName, newFileName, hotSpotTopLeft) end

---Register your custom cmd so it gets visible in the unit's cmd queue
---
---@param cmdID number
---@tparam
---@return boolean? assigned
function Spring.SetCustomCommandDrawData(cmdID) end

---Mouse
---
---@section mouse

---@param x number
---@param y number
---@return nil
function Spring.WarpMouse(x, y) end

---@param cursorName string
---@param cursorScale number? (Default: 1.0)
---@return nil
function Spring.SetMouseCursor(cursorName, cursorScale) end

---LOS Colors
---
---@section loscolors

---@param always table {r,g,b}
---@param LOS table = {r,g,b}
---@param radar table = {r,g,b}
---@param jam table = {r,g,b}
---@param radar2 table = {r,g,b}
---@return nil
function Spring.SetLosViewColors(always, LOS, radar, jam, radar2) end

---@param rotVal number? (Default: 0) in degrees
---@param rotVel number? (Default: 0) in degrees
---@param rotAcc number? (Default: 0) in degrees
---@param rotValRng number? (Default: 0) in degrees
---@param rotVelRng number? (Default: 0) in degrees
---@param rotAccRng number? (Default: 0) in degrees
---@return nil
function Spring.SetNanoProjectileParams(rotVal, rotVel, rotAcc, rotValRng, rotVelRng, rotAccRng) end

---Engine Config
---
---@section engineconfig
---
---The following functions read the engine configs saved in `Springsettings.cfg`, a version-ed instance of these or a custom file supplied on the command line.

---@param name string
---@param value number
---@param useOverlay boolean? (Default: false) the value will only be set in memory, and not be restored for the next game.
---@return nil
function Spring.SetConfigInt(name, value, useOverlay) end

---@param name string
---@param value number
---@param useOverla boolean? (Default: false) the value will only be set in memory, and not be restored for the next game.y
---@return nil
function Spring.SetConfigFloat(name, value, useOverla) end

---@param name string
---@param value number
---@param useOverlay boolean? (Default: false) the value will only be set in memory, and not be restored for the next game.
---@return nil
function Spring.SetConfigString(name, value, useOverlay) end

---Closes the application
---
---@return nil
function Spring.Quit() end

---Unit Group
---
---@section unitgroup

---@param unitID number
---@param groupID number the group number to be assigned, or -1 for deassignment
---@return nil
function Spring.SetUnitGroup(unitID, groupID) end

---Give Order
---
---@section giveorder

---Command Options params
---
---@class cmdOpts
---
---Can be specified as a table, or as an array containing any of the keys
---below.
---@field right boolean Right mouse key pressed
---@field alt boolean Alt key pressed
---@field ctrl boolean Ctrl key pressed
---@field shift boolean Shift key pressed
---@field meta boolean Meta (windows/mac/mod4) key pressed
local cmdOpts = {}

---@param cmdID number
---@param params table
---@param options cmdOpts
---@return nil|true
function Spring.GiveOrder(cmdID, params, options) end

---@param unitID number
---@param cmdID number
---@param params table
---@param options cmdOpts
---@return nil|true
function Spring.GiveOrderToUnit(unitID, cmdID, params, options) end

---@param unitMap table { [unitID] = arg1, ... }
---@param cmdID number
---@param params table
---@param options cmdOpts
---@return nil|true
function Spring.GiveOrderToUnitMap(unitMap, cmdID, params, options) end

---@param unitArray number[] array of unit ids
---@param cmdID number
---@param params table
---@param options cmdOpts
---@return nil|true
function Spring.GiveOrderToUnitArray(unitArray, cmdID, params, options) end

---@param unitID number
---@param cmdArray Command[]
---@return boolean ordersGiven
function Spring.GiveOrderArrayToUnit(unitID, cmdArray) end

---@param unitMap table { [unitID] = arg1, ... }
---@param cmdArray Command[]
---@return boolean ordersGiven
function Spring.GiveOrderArrayToUnitMap(unitMap, cmdArray) end

---@param unitArray number[] array of unit ids
---@param cmdArray Command[]
---@tparam When true, assign commands according to index between units and cmds arrays.
---
---If len(unitArray) < len(cmdArray) only the first len(unitArray) commands
---will be assigned, and vice-versa.
---@return nil|boolean
function Spring.GiveOrderArrayToUnitArray(unitArray, cmdArray) end

---@param spacing number
---@return nil
function Spring.SetBuildSpacing(spacing) end

---@param facing number
---@return nil
function Spring.SetBuildFacing(facing) end

---UI
---
---@section ui
---Very important! (allows synced inter-lua-enviroment communications)

---@param message string
---@param mode string "s"/"specs" | "a"/"allies"
---@return nil
function Spring.SendLuaUIMsg(message, mode) end

---@param message string
---@return nil
function Spring.SendLuaGaiaMsg(message) end

---@param message string
---@return nil
function Spring.SendLuaRulesMsg(message) end

---@param msg string
function Spring.SendLuaMenuMsg(msg) end

---Sharing
---
---@section sharing

---@param resource string metal | energy
---@param shareLevel number
---@return nil
function Spring.SetShareLevel(resource, shareLevel) end

---@param teamID number
---@param units string
---@return nil
function Spring.ShareResources(teamID, units) end

---@param teamID number
---@param resource string metal | energy
---@param amount number
---@return nil
function Spring.ShareResources(teamID, resource, amount) end

---UI
---
---@section ui

---@param x number
---@param y number
---@param z number
---@return nil
function Spring.SetLastMessagePosition(x, y, z) end

---Markers
---
---@section markers

---@param x number
---@param y number
---@param z number
---@param text string? (Default: "")
---@param localOnly boolean?
---@return nil
function Spring.MarkerAddPoint(x, y, z, text, localOnly) end

---@param x1 number
---@param y1 number
---@param z1 number
---@param x2 number
---@param y2 number
---@param z2 number
---@param localOnly boolean? (Default: false)
---@param playerId number?
---@return nil
function Spring.MarkerAddLine(x1, y1, z1, x2, y2, z2, localOnly, playerId) end

---
---Issue an erase command for markers on the map.
---
---@param x number
---@param y number
---@param z number
---@param unused nil This argument is ignored.
---@param localOnly boolean? (Default: false) do not issue a network message, erase only for the current player
---@param playerId number? when not specified it uses the issuer playerId
---@param alwaysErase boolean? (Default: false) erase any marker when `localOnly` and current player is spectating. Allows spectators to erase players markers locally
---@return nil
function Spring.MarkerErasePosition(x, y, z, unused, localOnly, playerId, alwaysErase) end

---Sun
---
---@section sun

---@class AtmosphereParams
---@field fogStart number
---@field fogEnd number
---@field sunColor rgba
---@field skyColor rgba
---@field cloudColor rgba
local AtmosphereParams = {}

---It can be used to modify the following atmosphere parameters
---
---Usage:
---```lua
---Spring.SetAtmosphere({ fogStart = 0, fogEnd = 0.5, fogColor = { 0.7, 0.2, 0.2, 1 }})
---```
---
---@param params AtmosphereParams
function Spring.SetAtmosphere(params) end

---@param dirX number
---@param dirY number
---@param dirZ number
---@param intensity number? (Default: `1.0`)
---@return nil
function Spring.SetSunDirection(dirX, dirY, dirZ, intensity) end

---Modify sun lighting parameters.
---
---```lua
---Spring.SetSunLighting({groundAmbientColor = {1, 0.1, 1}, groundDiffuseColor = {1, 0.1, 1} })
---```
---
---@param params { groundAmbientColor: rgb, groundDiffuseColor: rgb }
function Spring.SetSunLighting(params) end

---Map rendering params
---
---@class MapRenderingParams
---@field splatTexMults rgba
---@field splatTexScales rgba
---@field voidWater boolean
---@field voidGround boolean
---@field splatDetailNormalDiffuseAlpha boolean
local MapRenderingParams = {}

---Allows to change map rendering params at runtime.
---
---@param params MapRenderingParams
---@return nil
function Spring.SetMapRenderingParams(params) end

---@param normal boolean? (Default: true)
---@param shadow boolean? (Default: false)
---@return boolean updated
function Spring.ForceTesselationUpdate(normal, shadow) end

---AI
---
---@section ai

---@param aiTeam number
---@param message string
---@return boolean? ai_processed
function Spring.SendSkirmishAIMessage(aiTeam, message) end

---Developers
---
---@section developers

---@param sectionName string
---@param logLevel ?string|number
---@return nil
function Spring.SetLogSectionFilterLevel(sectionName, logLevel) end

---@int
---@int
---@int
---@int
---@param minLoopRunTime number?
---@param maxLoopRunTime number?
---@param baseRunTimeMult number?
---@param baseMemLoadMult number?
---@return nil
function Spring.GarbageCollectCtrl(minLoopRunTime, maxLoopRunTime, baseRunTimeMult, baseMemLoadMult) end

---@param drawSky boolean
---@return nil
function Spring.SetDrawSky(drawSky) end

---@param drawWater boolean
---@return nil
function Spring.SetDrawWater(drawWater) end

---@param drawGround boolean
---@return nil
function Spring.SetDrawGround(drawGround) end

---@param drawGroundDeferred boolean
---@param drawGroundForward boolean? allows disabling of the forward pass
---treturn nil
function Spring.SetDrawGroundDeferred(drawGroundDeferred, drawGroundForward) end

---@param drawUnitsDeferred boolean
---@param drawFeaturesDeferred boolean
---@param drawUnitsForward boolean? allows disabling of the respective forward passes
---@param drawFeaturesForward boolean? allows disabling of the respective forward passes
---@return nil
function Spring.SetDrawModelsDeferred(drawUnitsDeferred, drawFeaturesDeferred, drawUnitsForward, drawFeaturesForward) end

---This doesn't actually record the game in any way, it just regulates the framerate and interpolations.
---
---@param allowCaptureMode boolean
---@return nil
function Spring.SetVideoCapturingMode(allowCaptureMode) end

---@param timeOffset boolean
---@return nil
function Spring.SetVideoCapturingTimeOffset(timeOffset) end

---Water params
---
---@class WaterParams
---@field absorb rgb
---@field baseColor rgb
---@field minColor rgb
---@field surfaceColor rgb
---@field diffuseColor rgb
---@field specularColor rgb
---@field planeColor rgb
---@field texture string file
---@field foamTexture string file
---@field normalTexture string file
---@field damage number
---@field repeatX number
---@field repeatY number
---@field surfaceAlpha number
---@field ambientFactor number
---@field diffuseFactor number
---@field specularFactor number
---@field specularPower number
---@field fresnelMin number
---@field fresnelMax number
---@field fresnelPower number
---@field reflectionDistortion number
---@field blurBase number
---@field blurExponent number
---@field perlinStartFreq number
---@field perlinLacunarity number
---@field perlinAmplitude number
---@field windSpeed number
---@field waveOffsetFactor number
---@field waveLength number
---@field waveFoamDistortion number
---@field waveFoamIntensity number
---@field causticsResolution number
---@field causticsStrength number
---@field numTiles integer
---@field shoreWaves boolean
---@field forceRendering boolean
---@field hasWaterPlane boolean
local WaterParams = {}

---Does not need cheating enabled.
---
---Allows to change water params (mostly `BumpWater` ones) at runtime. You may
---want to set `BumpWaterUseUniforms` in your `springrc` to 1, then you don't even
---need to restart `BumpWater` via `/water 4`.
---
---@param waterParams WaterParams
---@return nil
function Spring.SetWaterParams(waterParams) end

---Preload
---
---@section preload

---
---Allow the engine to load the unit's model (and texture) in a background thread.
---Wreckages and buildOptions of a unit are automatically preloaded.
---
---@param unitDefID number
---@return nil
function Spring.PreloadUnitDefModel(unitDefID) end

---@param featureDefID number
---@return nil
function Spring.PreloadFeatureDefModel(featureDefID) end

---@param name string
---@return nil
function Spring.PreloadSoundItem(name) end

---@param modelName string
---@return boolean? success
function Spring.LoadModelTextures(modelName) end

---Decals
---
---@section decals

---@return nil|number decalID
function Spring.CreateGroundDecal() end

---@param decalID number
---@return boolean delSuccess
function Spring.DestroyGroundDecal(decalID) end

---@param decalID number
---@param midPosX number? (Default: currMidPosX)
---@param midPosZ number? (Default: currMidPosZ)
---@param sizeX number? (Default: currSizeX)
---@param sizeZ number? (Default: currSizeZ)
---@param projCubeHeight number? (Default: calculateProjCubeHeight)
---@return boolean decalSet
function Spring.SetGroundDecalPosAndDims(decalID, midPosX, midPosZ, sizeX, sizeZ, projCubeHeight) end

---@class xz
---@field x number
---@field y number
local xz = {}

---
---Use for non-rectangular decals
---
---@param decalID integer
---@param posTL xz? (Default: currPosTL)
---@param posTR xz? (Default: currPosTR)
---@param posBR xz? (Default: currPosBR)
---@param posBL xz? (Default: currPosBL)
---@param projCubeHeight number? (Default: calculateProjCubeHeight)
---@return boolean decalSet
function Spring.SetGroundDecalQuadPosAndHeight(decalID, posTL, posTR, posBR, posBL, projCubeHeight) end

---@param decalID number
---@param rot number? (Default: random) in radians
---@return boolean decalSet
function Spring.SetGroundDecalRotation(decalID, rot) end

---@param decalID number
---@param textureName string The texture has to be on the atlas which seems to mean it's defined as an explosion, unit tracks, or building plate decal on some unit already (no arbitrary textures)
---@param isMainTex boolean? (Default: true) If false, it sets the normals/glow map
---@return nil|boolean decalSet
function Spring.SetGroundDecalTexture(decalID, textureName, isMainTex) end

---@param decalID number
---@param texWrapDistance number? (Default: currTexWrapDistance) if non-zero sets the mode to repeat the texture along the left-right direction of the decal every texWrapFactor elmos
---@param texTraveledDistance number? (Default: currTexTraveledDistance) shifts the texture repetition defined by texWrapFactor so the texture of a next line in the continuous multiline can start where the previous finished. For that it should collect all elmo lengths of the previously set multiline segments.
---@return nil|boolean decalSet
function Spring.SetGroundDecalTextureParams(decalID, texWrapDistance, texTraveledDistance) end

---@param decalID number
---@param alpha number? (Default: currAlpha) Between 0 and 1
---@param alphaFalloff number? (Default: currAlphaFalloff) Between 0 and 1, per second
---@return boolean decalSet
function Spring.SetGroundDecalAlpha(decalID, alpha, alphaFalloff) end

---
---Sets projection cube normal to orient in 3D space.
---In case the normal (0,0,0) then normal is picked from the terrain
---
---@param decalID number
---@param normalX number? (Default: 0)
---@param normalY number? (Default: 0)
---@param normalZ number? (Default: 0)
---@return boolean decalSet
function Spring.SetGroundDecalNormal(decalID, normalX, normalY, normalZ) end

---
---Sets the tint of the ground decal. Color = 2 * textureColor * tintColor
---Respectively a color of (0.5, 0.5, 0.5, 0.5) is effectively no tint
---
---@param decalID number
---@param tintColR number? (Default: curTintColR)
---@param tintColG number? (Default: curTintColG)
---@param tintColB number? (Default: curTintColB)
---@param tintColA number? (Default: curTintColA)
---@return boolean decalSet
function Spring.SetGroundDecalTint(decalID, tintColR, tintColG, tintColB, tintColA) end

---
---Sets varios secondary parameters of a decal
---
---@param decalID number
---@param dotElimExp number? (Default: curValue) pow(max(dot(decalProjVector, SurfaceNormal), 0.0), dotElimExp), used to reduce decal artifacts on surfaces non-collinear with the projection vector
---@param refHeight number? (Default: curValue)
---@param minHeight number? (Default: curValue)
---@param maxHeight number? (Default: curValue)
---@param forceHeightMode number? (Default: curValue) in case forceHeightMode==1.0 ==> force relative height: midPoint.y = refHeight + clamp(midPoint.y - refHeight, minHeight); forceHeightMode==2.0 ==> force absolute height: midPoint.y = midPoint.y, clamp(midPoint.y, minHeight, maxHeight); other forceHeightMode values do not enforce the height of the center position
---@return boolean decalSet
function Spring.SetGroundDecalMisc(decalID, dotElimExp, refHeight, minHeight, maxHeight, forceHeightMode) end

---
---Use separate min and max for "gradient" style decals such as tank tracks
---
---@param decalID number
---@param creationFrameMin number? (Default: currCreationFrameMin)
---@param creationFrameMax number? (Default: currCreationFrameMax)
---@return boolean decalSet
function Spring.SetGroundDecalCreationFrame(decalID, creationFrameMin, creationFrameMax) end

---SDL Text
---
---@section sdltext

---@param x number
---@param y number
---@param width number
---@param height number
---@return nil
function Spring.SDLSetTextInputRect(x, y, width, height) end

---@return nil
function Spring.SDLStartTextInput() end

---@return nil
function Spring.SDLStopTextInput() end

---Window Management
---
---@section window

---@param displayIndex number
---@param winRelPosX number
---@param winRelPosY number
---@param winSizeX number
---@param winSizeY number
---@param fullScreen boolean
---@param borderless boolean
---@return nil
function Spring.SetWindowGeometry(displayIndex, winRelPosX, winRelPosY, winSizeX, winSizeY, fullScreen, borderless) end

---@return boolean minimized
function Spring.SetWindowMinimized() end

---@return boolean maximized
function Spring.SetWindowMaximized() end

---Misc
---
---@section misc

---@param startScript string the CONTENT of the script.txt spring should use to start.
---@return nil
function Spring.Reload(startScript) end

---
---If this call returns, something went wrong
---
---@param commandline_args string commandline arguments passed to spring executable.
---@param startScript string
---@return nil
function Spring.Restart(commandline_args, startScript) end

---Launches a new Spring instance without terminating the existing one.
---
---If this call returns, something went wrong
---
---@param commandline_args string commandline arguments passed to spring executable.
---@param startScript string the CONTENT of the script.txt spring should use to start (if empty, no start-script is added, you can still point spring to your custom script.txt when you add the file-path to commandline_args.
---@return nil
function Spring.Start(commandline_args, startScript) end

---Sets the icon for the process which is seen in the OS task-bar and other places (default: spring-logo).
---
---Note: has to be 24bit or 32bit.
---Note: on windows, it has to be 32x32 pixels in size (recommended for cross-platform)
---Note: *.bmp images have to be in BGR format (default for m$ ones).
---Note: *.ico images are not supported.
---
---@param iconFileName string
---@return nil
function Spring.SetWMIcon(iconFileName) end

---Sets the window title for the process (default: "Spring <version>").
---
---The shortTitle is displayed in the OS task-bar (default: "Spring <version>").
---
---NOTE: shortTitle is only ever possibly used under X11 (Linux & OS X), but not with QT (KDE) and never under Windows.
---
---@param title string
---@param titleShort string? (Default: title)
---@return nil
function SetWMCaption(title, titleShort) end

---@param threadName string? (Default: main)
---@return nil
function Spring.ClearWatchDogTimer(threadName) end

---@param text string
---@return nil
function Spring.SetClipboard(text) end

---Relinquish control of the game loading thread and OpenGL context back to the UI (LuaIntro).
---
---Should be called after each widget/unsynced gadget is loaded in widget/gadget handler. Use it to draw screen updates and process windows events.
---
---@usage local wantYield = Spring.Yield and Spring.Yield() -- nil check: not present in synced
---for wupget in pairs(wupgetsToLoad) do
---loadWupget(wupget)
---wantYield = wantYield and Spring.Yield()
---end
---@return boolean when true caller should continue calling `Spring.Yield` during the widgets/gadgets load, when false it shouldn't call it any longer.
function Spring.Yield() end