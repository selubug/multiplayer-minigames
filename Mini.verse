using { /Fortnite.com/Devices }
using { /Verse.org/Simulation }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /Fortnite.com/Playspaces }
using { /Fortnite.com/Characters }
using { /Fortnite.com/Game }
using { /UnrealEngine.com/Temporary/SpatialMath }
using { /UnrealEngine.com/Temporary/Diagnostics }
using { /UnrealEngine.com/Temporary/UI }
using { /Fortnite.com/UI }
using { /Verse.org/Colors }
using { /Verse.org/Random }
using { /Fortnite.com/Vehicles }
using { /Verse.org/Assets }
using { /Fortnite.com/FortPlayerUtilities }

# See https://dev.epicgames.com/documentation/en-us/uefn/create-your-own-device-in-verse for how to create a verse device.

# A Verse-authored creative device that can be placed in a level
player_stats := class<final><persistable>:
 Version:int = 1
  Elims:int = 0
  Wins:int = 0
  GamesWon:[]int = array{}

var PlayerStatsMap:weak_map(player, player_stats) = map{}
Update_Player_Stats<constructor>(Version:int, Elims:int, Wins:int, GamesWon:[]int):= player_stats:

     Version:= Version
    Elims:= Elims
    Wins:= Wins
    GamesWon:= GamesWon

GAMES := class(creative_device):

    @editable
   Teams:[]class_and_team_selector_device = array{}
   @editable
   TeamsPit:[]class_and_team_selector_device = array{}
   @editable
   DodgeMut:mutator_zone_device = mutator_zone_device{}
   @editable
   SpectateMut:mutator_zone_device = mutator_zone_device{}
   @editable
   SpectateMut2:mutator_zone_device = mutator_zone_device{}
   @editable
   RocketsMut:mutator_zone_device = mutator_zone_device{}
   @editable
   BoxStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   BigBoxStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   ShipmentStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   OneStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   EditwarStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   ColorStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   PlaneStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   TwoDStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   GlassStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   ChambStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   VentStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   SniperStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   VolcanoStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   UpStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   DodgeBallStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   SpleefStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   PlatformStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   OrbitStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   PotatoStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   CornStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   LavaStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   SpookyStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   Skybasebattles:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   PitStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   KnockStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   OGZone:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   PieceStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   GrindStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   InfectedStorm:basic_storm_controller_device = basic_storm_controller_device{}
   @editable
   Wins:tracker_device = tracker_device{}
   @editable
   XP:accolades_device = accolades_device{}
    @editable
   GlassFloor1:[]mutator_zone_device = array{}
    @editable
   GlassFloor2:[]mutator_zone_device = array{}
   @editable
   GlassFloor3:[]mutator_zone_device = array{}
   @editable
   GlassFloor4:[]mutator_zone_device = array{}
   @editable
   GlassFloor5:[]mutator_zone_device = array{}
   @editable
   GlassFloor6:[]mutator_zone_device = array{}
   @editable
   GlassFloor7:[]mutator_zone_device = array{}
   @editable
   GlassFloor8:[]mutator_zone_device = array{}
   @editable
   GlassFloor9:[]mutator_zone_device = array{}

   @editable
   Start:audio_player_device = audio_player_device{}
   @editable
   ElimAudio:audio_player_device = audio_player_device{}
   @editable
   TaterAudio:audio_player_device = audio_player_device{}
   @editable
  ColorSwitch:[]hud_message_device = array{}
  @editable
   Messages:[]hud_message_device = array{}
   @editable
   Messages1score:hud_message_device = hud_message_device{}
   @editable
   Messages2score:hud_message_device = hud_message_device{}
   @editable
   VictoryMessage:hud_message_device = hud_message_device{}
   @editable
   DefeatMessage:hud_message_device = hud_message_device{}
   @editable
   DrawMessage:hud_message_device = hud_message_device{}
   @editable
   UpcomingDraw:hud_message_device = hud_message_device{}
   @editable
   LoadScreen:[]hud_message_device = array{}
   @editable
   DamageCars:damage_volume_device = damage_volume_device{}
   @editable
   GlassFloor10:[]mutator_zone_device = array{}
   @editable
   GlassWin:mutator_zone_device = mutator_zone_device{}
   @editable
   Runnerswin:mutator_zone_device = mutator_zone_device{}
   @editable
   BumperTimer:timer_device = timer_device{}
   @editable
   RocketCarTimer:timer_device = timer_device{}
   @editable
   WaitTimer:timer_device = timer_device{}
   @editable
   HogTimer:timer_device = timer_device{}
   @editable
   BoxTimer:timer_device = timer_device{}
   @editable
   StartTimer:timer_device = timer_device{}
   @editable
   SniperTimer:timer_device = timer_device{}
   @editable
   GlassTimer:timer_device = timer_device{}
   @editable
   AxeTimer:timer_device = timer_device{}
   @editable
   EnderTimer:timer_device = timer_device{}
   @editable
   GGspawns:[]player_spawner_device = array{}
   @editable
   LavaZW:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   Loadstuff:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
   SnipeSpawn:cinematic_sequence_device = cinematic_sequence_device{}
    @editable
   Spawns:[]item_spawner_device = array{}
   @editable
   SpookyCin:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   InfectedSpawn:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   BigBoxSpawn:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   GrindSpawn:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   SwitchCins:[]cinematic_sequence_device = array{}
   @editable
   Upcin:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   Bridgecin:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   Speedup:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   SpideyCin:cinematic_sequence_device = cinematic_sequence_device{}
   @editable
   TeleCheck:conditional_button_device = conditional_button_device{}
  @editable
   GlassTeleporter:teleporter_device = teleporter_device{}
   @editable
   RocketTele:teleporter_device = teleporter_device{}
   @editable
   CarTele:teleporter_device = teleporter_device{}
   @editable
   BoxTeleporters:[]teleporter_device = array{}
   @editable
   LateTeleporters:[]teleporter_device = array{}
   @editable
   LateTeleporters2:[]teleporter_device = array{}
   @editable
   ZBTeleporters:[]teleporter_device = array{}
   @editable
   VentTeleporters:[]teleporter_device = array{}
   @editable
   SpleefTeleporters:[]teleporter_device = array{}
   @editable
   OneShotTeleporters:[]teleporter_device = array{}
   @editable
   EditTeleporters:[]teleporter_device = array{}
   @editable
   LavazwTeleporters:[]teleporter_device = array{}
   @editable
   BounceTeles:[]teleporter_device = array{}
   @editable
   SniperTeleport:teleporter_device = teleporter_device{}
   @editable
   SniperTeleporters:[]teleporter_device = array{}
   @editable
   SpookyTeleporters:[]teleporter_device = array{}
   @editable
   KnockTeleporters:[]teleporter_device = array{}
   @editable
   BigBoxTeleporters:[]teleporter_device = array{}
   @editable
   GrindTeleporters:[]teleporter_device = array{}
   @editable
   RedOrbitTeleport:teleporter_device = teleporter_device{}
   @editable
   RedCornTeleport:teleporter_device = teleporter_device{}
   @editable
   BlueCornTeleport:teleporter_device = teleporter_device{}
   @editable
   BlueOrbitTeleport:teleporter_device = teleporter_device{}
   @editable
   TelTele:teleporter_device = teleporter_device{}
   @editable
   OnlyUpTeles:teleporter_device = teleporter_device{}
   @editable
   SquidTeles:teleporter_device = teleporter_device{}
   @editable
   RunnerTeleport:teleporter_device = teleporter_device{}
   @editable
   RedskybaseTeleport:teleporter_device = teleporter_device{}
   @editable
   BlueskybaseTeleport:teleporter_device = teleporter_device{}
   @editable
   GreenskybaseTeleport:teleporter_device = teleporter_device{}
   @editable
   PurpleskybaseTeleport:teleporter_device = teleporter_device{}
   @editable
   RedDodgeTeleport:teleporter_device = teleporter_device{}
   @editable
   BlueDodgeTeleport:teleporter_device = teleporter_device{}
   @editable
   RedPieceTeleport:teleporter_device = teleporter_device{}
   @editable
   BluePieceTeleport:teleporter_device = teleporter_device{}
   @editable
   PotatoTeleport:teleporter_device = teleporter_device{}
   @editable
   RedOGTeleporter:teleporter_device = teleporter_device{}
   @editable
   BlueOGTeleporter:teleporter_device = teleporter_device{}
   @editable
   GreenOGTeleporter:teleporter_device = teleporter_device{}
   @editable
   PurpleOGTeleporter:teleporter_device = teleporter_device{}
   @editable
   InfectedTeleporter:teleporter_device = teleporter_device{}
   @editable
   TimeWarps:[]cinematic_sequence_device = array{}
   @editable
   SniperGranter:item_granter_device = item_granter_device{}
   @editable
   Sniper2Granter:item_granter_device = item_granter_device{}
   @editable
   TeleGranter:item_granter_device = item_granter_device{}
   @editable
   TeleGranter2:item_granter_device = item_granter_device{}
   @editable
   RocketGranter:item_granter_device = item_granter_device{}
   @editable
   EditWarGranter:item_granter_device = item_granter_device{}
   @editable
   OrbitGranter:item_granter_device = item_granter_device{}
   @editable
   SpideyLoot:item_granter_device = item_granter_device{}
   @editable
   SpookyGranter:item_granter_device = item_granter_device{}
   @editable
   OnePumpGranter:item_granter_device = item_granter_device{}
   @editable
   FloorlavaGranter:item_granter_device = item_granter_device{}
   @editable
   Knockstarter:item_granter_device = item_granter_device{}
   @editable
   AimbotGranter:item_granter_device = item_granter_device{}
   @editable
   Infected1Granter:item_granter_device = item_granter_device{}
   @editable
   Infected2Granter:item_granter_device = item_granter_device{}
   @editable
   NewGranter:[]item_granter_device = array{}
   @editable
   TaterGuns:[]item_granter_device = array{}
   @editable
   EditGranter:item_granter_device = item_granter_device{}
   @editable
   Trig:trigger_device = trigger_device{}
   @editable
   Trig2:trigger_device = trigger_device{}
   @editable
   Trig4:trigger_device = trigger_device{}
   @editable
   Trig5:trigger_device = trigger_device{}
   @editable
   TrigSky:trigger_device = trigger_device{}
   @editable
   TrigSkyStart:trigger_device = trigger_device{}
   @editable
   TrigOrbit:trigger_device = trigger_device{}
   @editable
   TrigOrbit2:trigger_device = trigger_device{}
   @editable
   SnipeTrigOrbit:trigger_device = trigger_device{}
   @editable
   PlacerTrig1:trigger_device = trigger_device{}
   @editable
   PlacerTrig2:trigger_device = trigger_device{}
   @editable
   EnableSky:trigger_device = trigger_device{}
   @editable
   DisableSky:trigger_device = trigger_device{}
   @editable
   DisableAim:trigger_device = trigger_device{}
   @editable
   DisableVFX:trigger_device = trigger_device{}
   @editable
   SniperGranters:[]item_granter_device = array{}
   @editable
   KnockGranters1:[]item_granter_device = array{}
   @editable
   KnockGranters2:[]item_granter_device = array{}
   @editable
   RocketyGranter:item_granter_device = item_granter_device{}
   @editable
   ZWGranter:item_granter_device = item_granter_device{}
   @editable
   Hoggranter:item_granter_device = item_granter_device{}
   @editable
   VWGranter:item_granter_device = item_granter_device{}
    @editable
   ChamberGranter:item_granter_device = item_granter_device{}
   @editable
   PowerGranter:item_granter_device = item_granter_device{}
   @editable
   ChamberAmmoGranter:item_granter_device = item_granter_device{}
   @editable
   SkybaseMats:item_granter_device = item_granter_device{}
   @editable
   OGLoots:item_granter_device = item_granter_device{}
   @editable
   AxeGranter:[]item_granter_device = array{}
   @editable
   ExplosiveGranter:[]item_granter_device = array{}
   @editable
   GG2Granter:[]item_granter_device = array{}
   @editable
   GG3Granter:[]item_granter_device = array{}
   @editable
   WeirdGranter:[]item_granter_device = array{}
   @editable
   NormGranter:item_granter_device = item_granter_device{}
   @editable
   SnapeGranter:item_granter_device = item_granter_device{}
   @editable
   PumpGranter:item_granter_device = item_granter_device{}
   @editable
   SpleefGranter:item_granter_device = item_granter_device{}
   @editable
   LavaZoneGranter:item_granter_device = item_granter_device{}
   @editable
   SkybaseGranter:item_granter_device = item_granter_device{}
   @editable
   ClearGranter:item_granter_device = item_granter_device{}
   @editable
   LateStorm:advanced_storm_controller_device = advanced_storm_controller_device{}
   @editable
   BumperCars:[]vehicle_spawner_nitro_drifter_sedan_device = array{}
   @editable
   Planes:[]vehicle_spawner_biplane_device = array{}
   @editable
   Bars:[]barrier_device = array{}
   @editable
   ColorDashCars:[]vehicle_spawner_nitro_drifter_sedan_device = array{}
   @editable
   Barsy:barrier_device = barrier_device{}
   @editable
   RocketCars1:[]vehicle_spawner_sports_car_device = array{}
   @editable
   HudMap:hud_controller_device = hud_controller_device{}
   @editable
   RedChecks:[]player_checkpoint_device = array{}
   @editable
   BlueChecks:[]player_checkpoint_device = array{}
   @editable
   BlueChecksCorn:player_checkpoint_device = player_checkpoint_device{}
   @editable
   RedChecksCorn:player_checkpoint_device = player_checkpoint_device{}
   @editable
   Potato:visual_effect_powerup_device = visual_effect_powerup_device{}
   @editable
   Infected:visual_effect_powerup_device = visual_effect_powerup_device{}
   @editable
   TaterExplode:explosive_device = explosive_device{}
   @editable
   RedArea:capture_area_device = capture_area_device{}
   @editable
   BlueArea:capture_area_device = capture_area_device{}
   @editable
   RedFlag:capture_item_spawner_device = capture_item_spawner_device{}
   @editable
   BlueFlag:capture_item_spawner_device = capture_item_spawner_device{}
   @editable
   Red2points:mutator_zone_device = mutator_zone_device{}
   @editable
   Blue2points:mutator_zone_device = mutator_zone_device{}
   @editable
   Red1points:mutator_zone_device = mutator_zone_device{}
   @editable
   Blue1points:mutator_zone_device = mutator_zone_device{}

   @editable
   OGExplode:[]explosive_device = array{}
   @editable
   PitExplode:[]explosive_device = array{}
   @editable
   ZWExplode:[]explosive_device = array{}
   @editable
   SkybaseExplode:[]explosive_device = array{}
   @editable
   LavaExplode:[]explosive_device = array{}
   @editable
   GlassExplode:[]explosive_device = array{}
   @editable
   BoxExplode:explosive_device = explosive_device{}
   @editable
   DBExplode:explosive_device = explosive_device{}
   @editable
   var SwitchProp:prop_manipulator_device = prop_manipulator_device{}
   @editable
   Damager:damage_amplifier_powerup_device = damage_amplifier_powerup_device{}

   @editable
   Knocker:[]movement_modulator_device = array{}
   @editable
   Speedy:movement_modulator_device = movement_modulator_device{}
   @editable
   TriggerAim:input_trigger_device = input_trigger_device{}

   var Nummy1:int = 0
   var Nummy2:int = 0
   var Nummy3:int = 0
   var NummyKnock:int = 0
   var Tee:[]team = array{}
   var Ary:[]int = array{}

   var Games:[]int = {22,26,30}
   var  Games2:[]int = {37,36,36,29,29,37,37,31,31,1,2,3,5,6,7,8,9,10,11,12,13,17,18,19,20,22,1,2,3,5,6,7,8,9,10,11,12,13,17,18,19,20,22,23,24,24,23,15,15,26,26,28,28,27,27,30,30,14,14,32,32,33,33,34,34,21,21}
   var EndCheck:int = 1
   var GameNumber:int = -10
   var Rocketeers:int = 0
   var Pitnum:int = 0
   var Breaknum:int = 0
   var TeamBluenum:int = 0
   var TeamRednum:int = 0
   var TeamBluenumFlag:int = 0
   var TeamRednumFlag:int = 0
   var TeamRednumCorn:int = 0
   var TeamBluenumCorn:int = 0
   var ColorSwitchNumber:int = 0
   var Teamspawnnum:int = 1
   var PlayerPumpElims:[player]int = map{}
   var PlayerGGElims:[player]int = map{}
   var PlayerChoice:[player]int = map{}
   var LastYPosition:[player]float = map{}
   var LastXPosition:[player]float = map{}
   var PlayerCan5:[player]canvas = map{}
   var PlayerCan10:[player]canvas = map{}
   var PlayerCan11:[player]canvas = map{}
   var PlayerCan12:[player]canvas = map{}
   var PlayerCan13:[player]canvas = map{}
   var PlayerCan15:[player]canvas = map{}
   var PlayerCan20:[player]canvas = map{}
   var PlayerCan24:[player]canvas = map{}
   var PlayerCan50:[player]canvas = map{}
   var PlayerAlive:[player]int = map{}
   var Knocknum:[player]int = map{}
   var Knocknummove:[player]int = map{}
   var PlayerCancels:[player]cancelable = map{}
   var PlayerCancels2:[player]cancelable = map{}
   var PlayerCancels3:[player]cancelable = map{}
   var PlayerCancels4:[player]cancelable = map{}
   var PlayerAliveTeam:[player]int = map{}
   var PlayerAliveTeamWin:[player]int = map{}
   var PlayerPotato:[int]player = map{}
   var PlayersTeam:[]player = array{}
   var RealGGranter:[]item_granter_device = array{}
   var RealG2Granter:[]item_granter_device = array{}
   var VentSpawn:[]vector3 = {vector3{X:=240128.0, Y:=60672.0, Z:=18500.0},vector3{X:=237824.0, Y:=65535.999992, Z:=18500.0},vector3{X:=237823.999982, Y:=66559.999992, Z:=18500.0},vector3{X:=237824.0, Y:=67583.999992, Z:=18500.0},vector3{X:=237823.999982, Y:=68607.999992, Z:=18500.0},vector3{X:=237824.0, Y:=64511.999992, Z:=18500.0},vector3{X:=237824.0, Y:=62463.999994, Z:=18500.0},vector3{X:=239104.0, Y:=60672.0, Z:=18500.0},vector3{X:=241152.0, Y:=60672.0, Z:=18500.0},vector3{X:=242176.0, Y:=60672.0, Z:=18500.0},vector3{X:=243200.0, Y:=60672.0, Z:=18500.0},vector3{X:=244224.0, Y:=60672.0, Z:=18500.0},vector3{X:=240639.999983, Y:=67380.85224, Z:=18500.0},vector3{X:=240639.999983, Y:=67380.85224, Z:=18500.0},vector3{X:=239568.652572, Y:=67383.978808, Z:=18500.0},vector3{X:=239568.652572, Y:=67383.978808, Z:=18300.716614}}
   var GG2Spawn:[]vector3 = {vector3{X:=244736.0, Y:=150272.0, Z:=8448.0},vector3{X:=244224.0, Y:=151808.0, Z:=8448.0},vector3{X:=244224.0, Y:=152320.0, Z:=8448.0},vector3{X:=244224.0, Y:=153344.0, Z:=8448.0},vector3{X:=245760.0, Y:=152832.0, Z:=8448.0},vector3{X:=243712.0 , Y:=151808.0, Z:=8448.0},vector3{X:=243200.0, Y:=150784.0, Z:=8448.0},vector3{X:=246272.0, Y:=150784.0, Z:=8448.0},vector3{X:=245248.0, Y:=151296.0, Z:=8448.0},vector3{X:=246784.0, Y:=150784.0, Z:=8448.0},vector3{X:=247808.0 ,Y:=150784.0, Z:=8448.0},vector3{X:=248832.0, Y:=150784.0, Z:=8448.0},vector3{X:=246272.0, Y:=153344.0, Z:=8448.0},vector3{X:=247296.0, Y:=153856.0, Z:=8448.0},vector3{X:=248320.0, Y:=153856.0, Z:=8448.0},vector3{X:=243200.0, Y:=153856.0, Z:=8448.0}}
   var GGSpawn:[]vector3 = {vector3{X:=318832.0, Y:=21032.0, Z:=2700.0},vector3{X:=318952.0, Y:=21816.0, Z:=2700.0},vector3{X:=320680.0, Y:=21632.0, Z:=2700.0},vector3{X:=321240.0, Y:=19480.0, Z:=2700.0},vector3{X:=320928.0, Y:=18312.0, Z:=2700.0},vector3{X:=318880.0, Y:=18160.0, Z:=2700.0},vector3{X:=317240.0, Y:=19184.60598, Z:=2700.0},vector3{X:=319610.565584, Y:=20422.859833, Z:=2700.0},vector3{X:=318904.0, Y:=19928.0, Z:=2700.0},vector3{X:=316920.0, Y:=19928.0, Z:=2700.0},vector3{X:=320616.0, Y:=20272.0, Z:=2700.0},vector3{X:=318352.0, Y:=21791.0, Z:=2700.0},vector3{X:=318224.0, Y:=20624.0, Z:=2700.0},vector3{X:=318222.0, Y:=19544.0, Z:=2700.0},vector3{X:=319560.0, Y:=19544.0, Z:=2700.0},vector3{X:=316928.0, Y:=21392.0, Z:=2700.0}}
   var SnipySpawn:[]vector3 = {vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0},vector3{X:=347648.0, Y:=288512.0, Z:=2750.0}}
   var UpSpawn:[]vector3 = {vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0},vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0}}
   var Teamspawners:vector3 = vector3{X:=-921024.0, Y:=-44864.0, Z:=42944.0}
   var NormSpawn:[]vector3 = {vector3{X:=79750.0, Y:=-22176.0, Z:=12608.0},vector3{X:=79450.0, Y:=-21250.0, Z:=12608.0},vector3{X:=79300.0, Y:=-21500.0, Z:=12608.0},vector3{X:=79500.0, Y:=-20992.0, Z:=12608.0},vector3{X:=80000.0, Y:=-21420.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21000.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21340.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21950.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21550.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21600.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21700.0, Z:=12608.0},vector3{X:=79808.0, Y:=-20900.0, Z:=12608.0},vector3{X:=79808.0, Y:=-20200.0, Z:=12608.0},vector3{X:=79808.0, Y:=-20000.0, Z:=12608.0},vector3{X:=79808.0, Y:=-20500.0, Z:=12608.0},vector3{X:=79808.0, Y:=-21700.0, Z:=12608.0}}
   var CSSpawn:[]vector3 = {vector3{X:=100800.0, Y:=98176.0, Z:=7680.0},vector3{X:=99392.0, Y:=98624.0, Z:=7680.0},vector3{X:=79808.0, Y:=-21376.0, Z:=12608.0}}
   Finish(Agent:agent):void={
      Playerfinish(Agent,39)

    }

    EndandWipe()<suspends>:void={
        Print("endywipe")
     var counter:int = 0
                 PlacerTrig1.Trigger()

        set RealG2Granter= array{}
        set Breaknum = 1
        SpectateMut.Disable()
        SpectateMut2.Disable()
        for(T:GlassExplode):
          T.Reset()
      Sleep(5.0)
       AllPlayers4:=GetPlayspace().GetPlayers()
        for(P:AllPlayers4):
         if(Playerchar:= P.GetFortCharacter[]):
          if(Vec:= NormSpawn[counter]):
           Rot:= Playerchar.GetViewRotation()
             P.Respawn(Vec,Rot)
             Sleep(0.01)
          set counter+=1
      set Pitnum = 0

      BoxTimer.Reset()
      PitStorm.DestroyStorm()
      PitStorm.GenerateStorm()

      EnderTimer.Reset()
              Trig4.Trigger()

          for(Y:Bars):
             Y.Enable()
        var  numer:int = 0
          for(v:GGspawns):
             if(K:= NormSpawn[numer]):
                          Print("{K}")
                            Rotation:= v.GetTransform().Rotation

                             if(v.TeleportTo[K, Rotation]):
                             Pos:= v.GetTransform().Translation
                              Print("{Pos}")
                     set numer+=1
      AllPlayers:=GetPlayspace().GetPlayers()
             if(Plu:= AllPlayers[0]):
               for(X:PitExplode):
                 X.Reset()
                 X.Explode(Plu)
               BoxExplode.Reset()
               BoxExplode.Explode(Plu)

            for(X:AllPlayers):

               Rand:= GetRandomInt(0,5)
               #if(Loader:= LoadScreen[Rand]):
                 #  Loader.Show(X)
                spawn:
                  PutCanvasLoad(X, Rand)
             if(set PlayerAlive[X]=0):
             if(set PlayerAliveTeam[X]=0):
             if(set PlayerAliveTeamWin[X]=0):
              ClearGranter.GrantItem(X)

             if(Class:= Teams[11]):

                Class.ChangeClass(X)


            set counter +=1
           if(GameNumber = 0 ):
               GlassStorm.DestroyStorm()
               Bridgecin.GoToEndAndStop()
                for(I:GlassFloor1):
                 I.Disable()
                for(I:GlassFloor2):
                  I.Disable()
                for(I:GlassFloor3):
                    I.Disable()
                for(I:GlassFloor4):
                      I.Disable()
                for(I:GlassFloor5):
                        I.Disable()
                for(I:GlassFloor6):
                          I.Disable()
                for(I:GlassFloor7):
                            I.Disable()
                for(I:GlassFloor8):
                              I.Disable()
                for(I:GlassFloor9):
                               I.Disable()
                for(I:GlassFloor10):
                                I.Disable()
           if(GameNumber = 1 ):
             LateStorm.DestroyStorm()
             AxeTimer.Reset()
             TrigSkyStart.Trigger()
             if(Plu:= AllPlayers[0]):
              for(X:ZWExplode):
                X.Reset()
                X.Explode(Plu)
           if(GameNumber = 2 ):

              BoxStorm.DestroyStorm()
               for(Y:TimeWarps):
                 Y.GoToEndAndStop()
           if(GameNumber = 3 ):

            BoxStorm.DestroyStorm()
           if(GameNumber = 4 ):

            BoxStorm.DestroyStorm()

           if(GameNumber = 5 ):
            SniperStorm.DestroyStorm()
            SniperTimer.Reset()
           if(GameNumber = 6 ):
            PlatformStorm.DestroyStorm()
             for(X:BumperCars):
              X.DestroyVehicle()
               X.Enable()
               X.RespawnVehicle()

             Speedup.GoToEndAndStop()
           if(GameNumber = 7 ):
             LateStorm.DestroyStorm()
             TrigSkyStart.Trigger()
              if(Plu:= AllPlayers[0]):
               for(X:ZWExplode):
                 X.Reset()
                 X.Explode(Plu)
           if(GameNumber = 8 ):
             OneStorm.DestroyStorm()
           if(GameNumber = 9 ):
             ChambStorm.DestroyStorm()
           if(GameNumber = 10 ):
            PlaneStorm.DestroyStorm()
            Speedup.GoToEndAndStop()
             for(X:Planes):
               X.Enable()
               X.RespawnVehicle()
           if(GameNumber = 11 ):
            TwoDStorm.DestroyStorm()
            Speedup.GoToEndAndStop()
                 for(P:AllPlayers):
                      Trig2.Trigger(P)
           if(GameNumber = 12  ):
             RocketCarTimer.Reset()
             ChambStorm.DestroyStorm()
             DamageCars.Disable()
              for(Y:RocketCars1):
                 Y.DestroyVehicle()
                  Y.Enable()
                  Y.RespawnVehicle()
           if(GameNumber = 13 ):
             ShipmentStorm.DestroyStorm()
           if(GameNumber = 14 ):
             EditwarStorm.DestroyStorm()

           if(GameNumber = 15 ):
             ColorStorm.DestroyStorm()
              Print("switchytoons")
                var  numery:int = 0
                     for(X:ColorDashCars):

                      X.DestroyVehicle()
                      X.Enable()
                      X.RespawnVehicle()

                  SwitchProp.ShowProps()


           if(GameNumber = 16 ):
           if(GameNumber = 17 ):
             UpStorm.DestroyStorm()
             Upcin.GoToEndAndStop()
           if(GameNumber = 18 ):
             OneStorm.DestroyStorm()
           if(GameNumber = 19 ):
             BoxStorm.DestroyStorm()
           if(GameNumber = 20 ):
             VentStorm.DestroyStorm()
              Speedup.GoToEndAndStop()

           if(GameNumber = 21 ):
             DodgeBallStorm.DestroyStorm()
             if(Plu:= AllPlayers[0]):

                DBExplode.Reset()
                DBExplode.Explode(Plu)
           if(GameNumber = 22 ):
             SpleefStorm.DestroyStorm()
           if(GameNumber = 23 ):
             OrbitStorm.DestroyStorm()
             TrigSkyStart.Trigger()
              for(V:AllPlayers):
               Trig4.Trigger(V)
             set TeamBluenum = 0
             set TeamRednum = 0
             for(C:RedChecks):
               C.Disable()
             for(C:BlueChecks):
               C.Disable()
           if(GameNumber = 24 ):
            OrbitStorm.DestroyStorm()

             set TeamBluenumFlag = 0
             set  TeamRednumFlag = 0

             RedFlag.Disable()
             BlueFlag.Disable()
             RedArea.Disable()
             BlueArea.Disable()
                  for(C:RedChecks):
                     C.Disable()
                  for(C:BlueChecks):
                      C.Disable()
           if(GameNumber = 25 ):
            PotatoStorm.DestroyStorm()
           if(GameNumber = 26 ):
             CornStorm.DestroyStorm()
              set TeamRednumCorn= 0
              set TeamBluenumCorn = 0
              BlueChecksCorn.Disable()
              RedChecksCorn.Disable()
           if(GameNumber = 27 ):
             BoxStorm.DestroyStorm()
           if(GameNumber = 28  ):
             SnipeSpawn.GoToEndAndStop()
            OrbitStorm.DestroyStorm()
              for(V:AllPlayers):
                 Trig4.Trigger(V)
              for(Y:Spawns):
                 Y.Enable()
           if(GameNumber = 29 ):
             LavaStorm.DestroyStorm()
              LavaZW.GoToEndAndStop()
            if(Plu:= AllPlayers[0]):
              for(X:LavaExplode):
                X.Reset()
                 X.Explode(Plu)
           if(GameNumber = 30 ):
             Skybasebattles.DestroyStorm()
             if(Plu:= AllPlayers[0]):
              for(X:SkybaseExplode):
                 X.Reset()
                X.Explode(Plu)
           if(GameNumber = 31 ):
             SpookyStorm.DestroyStorm()
              SpookyCin.GoToEndAndStop()

              TrigSkyStart.Trigger()
              for(V:AllPlayers):
                Trig4.Trigger(V)
           if(GameNumber = 32 ):
                OGZone.DestroyStorm()
                if(Plu:= AllPlayers[0]):
                 for(X:OGExplode):
                    X.Reset()
                   X.Explode(Plu)
           if(GameNumber = 33 ):
             BoxStorm.DestroyStorm()

           if(GameNumber = 34 ):
            BoxStorm.DestroyStorm()
           if(GameNumber = 35):
            KnockStorm.DestroyStorm()
           if(GameNumber = 36):
              PieceStorm.DestroyStorm()
           if(GameNumber = 37):
                BoxStorm.DestroyStorm()
           if(GameNumber = 38):
               BigBoxSpawn.GoToEndAndStop()
                  BoxStorm.DestroyStorm()
           if(GameNumber = 39):
                        for(T:AllPlayers):
                           DisableAim.Trigger(T)
                 BigBoxSpawn.GoToEndAndStop()
                    BoxStorm.DestroyStorm()
                    TriggerAim.UnregisterAll()
                    TriggerAim.Disable()
           if(GameNumber = 40):
                      GrindSpawn.GoToEndAndStop()
                         GrindStorm.DestroyStorm()
           if(GameNumber = 41):
                          InfectedSpawn.GoToEndAndStop()
                             InfectedStorm.DestroyStorm()
                             SniperTimer.Reset()
      Sleep(5.0)
       #was6
       set counter = 0
        for(X:AllPlayers):
           Print("respy")


            if(PChar := X.GetFortCharacter[]):
                PChar.SetVulnerability(true)
                Sleep(0.01)
                PChar.Damage(damage_args{Amount := 300.0, Instigator := option{PChar},Source := option{PChar}})

               #if(Vec:= NormSpawn[counter]):
               # Rot:= PChar.GetViewRotation()
               #   X.Respawn(Vec,Rot)
         set counter  +=1
        set GameNumber = -10
    Loadstuff.GoToEndAndStop()
    Sleep(10.0)
     spawn:
      Starty()


    }
    PlayerelimedGG(Agent:elimination_result):void={


    if(EndCheck= 1 ):
     Print("tswift2")
    else:
      Print("tswift")
      Elimed:= Agent.EliminatedCharacter
       Elim:= Agent.EliminatingCharacter
        # if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
            AllPlayers:=GetPlayspace().GetPlayers()
               if(Act:= Elim?, Real:= Act.GetAgent[],  Player1:= player[Real]):
                ElimAudio.Play(Player1)


              if(GameNumber = 5 or GameNumber = 9 or GameNumber = 11 or  GameNumber = 20  or GameNumber = 23 or GameNumber = 24 or GameNumber = 26 or GameNumber = 28  or GameNumber = 31 or GameNumber = 38 or GameNumber = 39 or GameNumber = 40 or GameNumber = 41):
                Print("nogun")
              else:
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                  spawn:

                      Reespawnbut(Player2)
                if(Num:= PlayerAlive[Player2]):
                    if(Num=1):
                      NormGranter.GrantItem(Player2)
              if(Ali:= PlayerAliveTeam[player[Elimed.GetAgent[]]]):
                if(Ali=7 or Ali=6 or Ali = 8 or Ali = 9):
                 if(Switcher:= TeamsPit[Pitnum]):
                   if(GameNumber= 23 or GameNumber = 24 ):
                     Print("no")
                   else:
                    if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                     Switcher.ChangeTeam(Player2)
                        set Pitnum+=1
                 else:
                   if(Switcher:= TeamsPit[19]):
                    if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                      Switcher.ChangeTeam(Player2)
              if(GameNumber=11):
               if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                if(Player1=Player2):
                 Print("jewje")
                else:
                 if(set PlayerGGElims[Player1]+=1):
                  if(Ems:=PlayerGGElims[Player1]):
                     if(Item:=RealG2Granter[Ems] ):
                       Item.GrantItem(Player1)
                    if(Ems = 15):
                         for(P:AllPlayers):
                          Trig2.Trigger(P)
                       Playerfinish(Player1,1)
              if(GameNumber=9):
               if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                if(Player1=Player2):
                  Print("jewje")
                else:
                 if(set PlayerGGElims[Player1]+=1):
                  if(Ems:=PlayerGGElims[Player1]):
                    if(Item:=RealG2Granter[Ems] ):
                      Item.GrantItem(Player1)
                   if(Ems = 15):
                    Playerfinish(Player1,1)

              if(GameNumber=0):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                 if(set PlayerAlive[Player2]=0):

                  spawn:
                      PlayersAliveCheck()
              if(GameNumber=1):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=2):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=3):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=4):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=5):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=1):

              if(GameNumber=6):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=7):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=8):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=10):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=12):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  if(set PlayerAliveTeam[Player2]=0):
                 spawn:
                  CheckTeams()
              if(GameNumber=13):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(Act:= Elim?, Real:= Act.GetAgent[],  Player1:= player[Real]):
                 if(set PlayerAlive[Player2]=0):
                  ChamberAmmoGranter.GrantItem(Player1)
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=14):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=15):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=16):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):


              if(GameNumber=17):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=18):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=19):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAlive[Player2]=0):
                  spawn:
                    PlayersAliveCheck()
              if(GameNumber=20):
               if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                if(Player1=Player2):
                  Print("jewje")
                else:
                 if(set PlayerAlive[Player2]=1):
                  if(set PlayerGGElims[Player1]+=1):
                    if(Ems:=PlayerGGElims[Player1]):
                     if(Ems = 10):

                        Playerfinish(Player1,1)
              if(GameNumber=21):
                if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                 DodgeMut.Enable()
                 if(set PlayerAliveTeam[Player2]=0):
                  if(set PlayerAlive[Player2]=0):
                   spawn:
                    CheckTeams()

              if(GameNumber=22):
                   if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                              if(set PlayerAlive[Player2]=0):
                                spawn:
                                  PlayersAliveCheck()
              if(GameNumber=23):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(Ali:= PlayerAliveTeam[Player2]):
                  if(Ali=6):
                     set TeamRednum+=1
                  if(Ali=7):
                     set TeamBluenum+=1
                 if(TeamBluenum=20):
                  Playerfinish(Player2, 6)

                 if(TeamRednum=20):
                  Playerfinish(Player2, 7)

              if(GameNumber=24):

              if(GameNumber=25):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                            if(set PlayerAlive[Player2]=0):
                              spawn:
                                PlayersAliveCheck()
              if(GameNumber=26):
                 if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                                if(set PlayerAlive[Player2]=1):

              if(GameNumber=27):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                             if(set PlayerAlive[Player2]=0):
                              spawn:
                                PlayersAliveCheck()
              if(GameNumber=28):
                    if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                                if(Player1=Player2):
                                 Print("jewje")
                                else:
                                 if(set PlayerGGElims[Player1]+=1):
                                   if(Ems:=PlayerGGElims[Player1]):

                                     if(Ems = 10):
                                          for(P:AllPlayers):
                                           Trig2.Trigger(P)
                                        Playerfinish(Player1,1)
              if(GameNumber=29):
                 if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                                          if(set PlayerAlive[Player2]=0):
                                            spawn:
                                              PlayersAliveCheck()
              if(GameNumber=30):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                                              if(set PlayerAliveTeam[Player2]=0):
                                                if(set PlayerAlive[Player2]=0):
                              spawn:
                                    CheckTeams4()
              if(GameNumber=31):
               if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                if(Player1=Player2):
                  Print("jewje")
                else:
                 if(set PlayerGGElims[Player1]+=1):
                   if(Ems:=PlayerGGElims[Player1]):
                    if(Item:=RealG2Granter[Ems] ):
                      Item.GrantItem(Player1)
                    if(Ems = 7):
                      Playerfinish(Player1,1)
              if(GameNumber=32):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                        if(set PlayerAliveTeam[Player2]=0):
                          if(set PlayerAlive[Player2]=0):
                      spawn:
                        CheckTeams4()
              if(GameNumber=33):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                          if(set PlayerAlive[Player2]=0):
                            spawn:
                              PlayersAliveCheck()
              if(GameNumber=34):
               if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                if(set PlayerAliveTeam[Player2]=0):
                  if(set PlayerAlive[Player2]=0):
                spawn:
                  CheckTeams8()
              if(GameNumber=35):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                  if(set PlayerAlive[Player2]=0):
                      spawn:
                        PlayersAliveCheck()
              if(GameNumber=36):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                      if(set PlayerAliveTeam[Player2]=0):
                        if(set PlayerAlive[Player2]=0):
                         spawn:
                          CheckTeams()
              if(GameNumber=37):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                   if(set PlayerAlive[Player2]=0):
                        spawn:
                           PlayersAliveCheck()
              if(GameNumber = 38):
                 if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                         if(Player1=Player2):
                            Print("jewje")
                         else:
                          if(set PlayerGGElims[Player1]+=1):
                            if(Ems:=PlayerGGElims[Player1]):
                              if(Ems = 5):
                                Playerfinish(Player1,1)
              if(GameNumber = 39):
                 if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                                  if(Player1=Player2):
                                     Print("jewje")
                                  else:
                                   if(set PlayerGGElims[Player1]+=1):
                                     if(Ems:=PlayerGGElims[Player1]):
                                       if(Ems = 10):
                                         Playerfinish(Player1,1)
              if(GameNumber = 40):
                if(Act:= Elim?, Real:= Act.GetAgent[], Real2:=Elimed.GetAgent[] , Player1:= player[Real],Player2:= player[Real2]):
                   DisableAim.Trigger(Player1)
                                          if(Player1=Player2):
                                             Print("jewje")
                                          else:
                                           if(set PlayerGGElims[Player1]+=1):
                                             if(Ems:=PlayerGGElims[Player1]):
                                               if(Item:=RealG2Granter[Ems] ):
                                                  Item.GrantItem(Player1)
                                               if(Ems = 10):
                                                 Playerfinish(Player1,1)
              if(GameNumber = 41):
                if( Real2:=Elimed.GetAgent[], Player2:= player[Real2]):
                     if(Numer:= PlayerAliveTeam[Player2]):
                      Print("infectedtyyyy")
                        if(Numer =7):
                             Print("infectedshesh")
                           if(set PlayerAlive[Player2]= 6) :
                             Infected.Pickup(Player2)
                              Infected1Granter.GrantItem(Player2)
                            spawn:
                               CheckTeams()


    }
    CheckTeams8()<suspends>:void={


    AllPlayers:=GetPlayspace().GetPlayers()
     Plays2:= GetPlayspace().GetTeamCollection().GetTeams()
     Sleep(0.1)
      var Team1:int = 0
      var Team2:int = 0
      var Team3:int = 0
      var Team4:int = 0
      var Team5:int = 0
      var Team6:int = 0
      var Team7:int = 0
      var Team8:int = 0
      var Countnumber:int = 0
          for(X:AllPlayers):
             if(Num:= PlayerAliveTeam[X]):
                if(Num=6):
                 set Team1+=1

                if(Num=7):
                 set Team2+=1
                if(Num=8):
                  set Team3+=1
                if(Num=9):
                    set Team4+=1
                if(Num=10):
                      set Team5+=1
                if(Num=11):
                        set Team6+=1
                if(Num=12):
                          set Team7+=1
                if(Num=13):
                            set Team8+=1

      if(Team3>0 and Team1=0 and Team2 = 0 and Team4 = 0 and Team5 =0 and Team6 = 0 and Team7 = 0 and Team8 = 0  ):
          Print("team1")

              if(Plu:=Plays2[1]):
                if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                    for(Y:Plays):
         if(Pla:= AllPlayers[0]):
           if(Age:= agent[Pla]):
            Playerfinish(Age,8)

      if(Team4>0 and Team3=0 and Team1=0 and Team2 = 0 and Team5 =0 and Team6 = 0 and Team7 = 0 and Team8 = 0):
            Print("team2")
           if(Pla:= AllPlayers[0]):
            if(Age:= agent[Pla]):
              Playerfinish(Age,9)

      if(Team1>0 and Team3=0 and Team4=0 and Team2 = 0 and Team5 =0 and Team6 = 0 and Team7 = 0 and Team8 = 0):
              Print("team3")

            if(Pla:= AllPlayers[0]):
             if(Age:= agent[Pla]):
               Playerfinish(Age,6)

      if(Team2>0 and Team3=0 and Team1=0 and Team4 = 0 and Team5 =0 and Team6 = 0 and Team7 = 0 and Team8 = 0):
                Print("team4")

               if(Pla:= AllPlayers[0]):
                 if(Age:= agent[Pla]):
                   Playerfinish(Age,7)
      if(Team5>0 and Team3=0 and Team1=0 and Team4 = 0 and Team2 =0 and Team6 = 0 and Team7 = 0 and Team8 = 0):
                    Print("team4")

                   if(Pla:= AllPlayers[0]):
                     if(Age:= agent[Pla]):
                       Playerfinish(Age,11)
      if(Team6>0 and Team3=0 and Team1=0 and Team4 = 0 and Team5 =0 and Team2 = 0 and Team7 = 0 and Team8 = 0):
                        Print("team4")

                       if(Pla:= AllPlayers[0]):
                         if(Age:= agent[Pla]):
                           Playerfinish(Age,12)
      if(Team7>0 and Team3=0 and Team1=0 and Team4 = 0 and Team5 =0 and Team6 = 0 and Team2 = 0 and Team8 = 0):
                            Print("team4")

                           if(Pla:= AllPlayers[0]):
                             if(Age:= agent[Pla]):
                               Playerfinish(Age,13)
      if(Team8>0 and Team3=0 and Team1=0 and Team4 = 0 and Team5 =0 and Team6 = 0 and Team7 = 0 and Team2 = 0):
                                Print("team4")

                               if(Pla:= AllPlayers[0]):
                                 if(Age:= agent[Pla]):
                                   Playerfinish(Age,14)


    }
    CheckTeams4()<suspends>:void={


    AllPlayers:=GetPlayspace().GetPlayers()
     Plays2:= GetPlayspace().GetTeamCollection().GetTeams()
     Sleep(0.1)
      var Team1:int = 0
      var Team2:int = 0
      var Team3:int = 0
      var Team4:int = 0
      var Countnumber:int = 0
          for(X:AllPlayers):
             if(Num:= PlayerAliveTeam[X]):
                if(Num=6):
                 set Team1+=1

                if(Num=7):
                 set Team2+=1
                if(Num=8):
                  set Team3+=1
                if(Num=9):
                    set Team4+=1
     if(GameNumber = 30 or GameNumber = 32):
      if(Team3>0 and Team1=0 and Team2 = 0 and Team4 = 0 ):
          Print("team2")
                     for(Y:AllPlayers):
                        if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                           if(Can:= PlayerCan10[Y]):
                               PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan11[Y]):
                                 PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan12[Y]):
                                PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan5[Y]):
                                  PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan13[Y]):
                                    PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan15[Y]):
                                      PlayerUI.RemoveWidget(Can)
              if(Plu:=Plays2[1]):
                if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                    for(Y:Plays):
                      Print("incyy")


                       if(Pl:=player[Y]):

         if(Pla:= AllPlayers[0]):
          if(Age:= agent[Pla]):
            Playerfinish(Age,8)
         # EndDevice3.Activate(Pla)
      if(Team4>0 and Team3=0 and Team1=0 and Team2 = 0 ):
            Print("team2")
                       for(Y:AllPlayers):
                          if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                             if(Can:= PlayerCan10[Y]):
                                 PlayerUI.RemoveWidget(Can)
                             if(Can:= PlayerCan11[Y]):
                                   PlayerUI.RemoveWidget(Can)
                             if(Can:= PlayerCan12[Y]):
                                  PlayerUI.RemoveWidget(Can)
                             if(Can:= PlayerCan5[Y]):
                                    PlayerUI.RemoveWidget(Can)
                             if(Can:= PlayerCan13[Y]):
                                      PlayerUI.RemoveWidget(Can)
                             if(Can:= PlayerCan15[Y]):
                                        PlayerUI.RemoveWidget(Can)
                if(Plu:=Plays2[1]):
                  if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                      for(Y:Plays):
                        Print("incyy")
                         if(Pl:=player[Y]):
           if(Pla:= AllPlayers[0]):
            if(Age:= agent[Pla]):
              Playerfinish(Age,9)
         #   EndDevice4.Activate(Pla)
      if(Team1>0 and Team3=0 and Team4=0 and Team2 = 0 ):
              Print("team2")
                         for(Y:AllPlayers):
                            if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                               if(Can:= PlayerCan10[Y]):
                                   PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan11[Y]):
                                     PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan12[Y]):
                                    PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan5[Y]):
                                      PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan13[Y]):
                                        PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan15[Y]):
                                          PlayerUI.RemoveWidget(Can)
                  if(Plu:=Plays2[1]):
                    if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                        for(Y:Plays):
                          Print("incyy")
                           if(Pl:=player[Y]):
            if(Pla:= AllPlayers[0]):
             if(Age:= agent[Pla]):
               Playerfinish(Age,6)

      if(Team2>0 and Team3=0 and Team1=0 and Team4 = 0 ):
                Print("team2")
                           for(Y:AllPlayers):
                              if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                                 if(Can:= PlayerCan10[Y]):
                                     PlayerUI.RemoveWidget(Can)
                                 if(Can:= PlayerCan11[Y]):
                                       PlayerUI.RemoveWidget(Can)
                                 if(Can:= PlayerCan12[Y]):
                                      PlayerUI.RemoveWidget(Can)
                                 if(Can:= PlayerCan5[Y]):
                                        PlayerUI.RemoveWidget(Can)
                                 if(Can:= PlayerCan13[Y]):
                                          PlayerUI.RemoveWidget(Can)
                                 if(Can:= PlayerCan15[Y]):
                                            PlayerUI.RemoveWidget(Can)
                    if(Plu:=Plays2[1]):
                      if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                          for(Y:Plays):
                            Print("incyy")
                             if(Pl:=player[Y]):
               if(Pla:= AllPlayers[0]):
                 if(Age:= agent[Pla]):
                   Playerfinish(Age,7)


    }
    CheckTeams()<suspends>:void={
      Sleep(0.1)
    AllPlayers:=GetPlayspace().GetPlayers()
     Plays2:= GetPlayspace().GetTeamCollection().GetTeams()

      var Team1:int = 0
      var Team2:int = 0
      var Team3:int = 0
      var Team4:int = 0
      var Countnumber:int = 0
          for(X:AllPlayers):
             if(Num:= PlayerAliveTeam[X]):
                if(Num=6):
                 set Team1+=1

                if(Num=7):
                 set Team2+=1
                if(Num=8):
                  set Team3+=1
                if(Num=9):
                    set Team4+=1

        if(Team1=0):
            Print("team1")
                for(Y:AllPlayers):
                 if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                    if(Can:= PlayerCan10[Y]):
                       PlayerUI.RemoveWidget(Can)
                    if(Can:= PlayerCan11[Y]):
                        PlayerUI.RemoveWidget(Can)
                    if(Can:= PlayerCan12[Y]):
                        PlayerUI.RemoveWidget(Can)
                    if(Can:= PlayerCan5[Y]):
                          PlayerUI.RemoveWidget(Can)
                    if(Can:= PlayerCan13[Y]):
                            PlayerUI.RemoveWidget(Can)
                    if(Can:= PlayerCan15[Y]):
                              PlayerUI.RemoveWidget(Can)
            if(Plu:=Plays2[0]):
             if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
               for(Y:Plays):
                    if(Pl:=player[Y]):


                   Print("incyy")
           if(Pla:= AllPlayers[0]):
            if(Age:= agent[Pla]):
               Playerfinish(Age,7)

        if(Team2=0):
          Print("team2")
                     for(Y:AllPlayers):
                        if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                           if(Can:= PlayerCan10[Y]):
                               PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan11[Y]):
                                 PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan12[Y]):
                                PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan5[Y]):
                                  PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan13[Y]):
                                    PlayerUI.RemoveWidget(Can)
                           if(Can:= PlayerCan15[Y]):
                                      PlayerUI.RemoveWidget(Can)
              if(Plu:=Plays2[1]):
                if(Plays:= GetPlayspace().GetTeamCollection().GetAgents[Plu]):
                    for(Y:Plays):
                      Print("incyy")
                       if(Pl:=player[Y]):
           if(Pla:= AllPlayers[0]):
             if(Age:= agent[Pla]):
                Playerfinish(Age,6)


    }
    Loopmove(Nu:int)<suspends>:void=
      {
        Print("redlightacti")

         AllPlayers3:=GetPlayspace().GetPlayers()
          for(X:AllPlayers3):

        Sleep(1.0)
         AllPlayers:=GetPlayspace().GetPlayers()
                     for(X:AllPlayers):
                      if(Playa2:= X.GetFortCharacter[]):


                        Rotation2 := Playa2.GetViewRotation()
                        TranslationX:=Playa2.GetTransform().Translation.X
                        TranslationY:=Playa2.GetTransform().Translation.Y
                          if(set  LastXPosition[X]=  TranslationX):
                          if(set  LastYPosition[X]= TranslationY ):
         var time:int = Nu
            loop:
                if(Breaknum = 1):
                   break
              Sleep(0.2)
                set time-=1
                 AllPlayers2:=GetPlayspace().GetPlayers()
                     for(X:AllPlayers2):
                      if(Playa2:= X.GetFortCharacter[]):

                        Rotation2 := Playa2.GetViewRotation()
                        TranslationX:=Playa2.GetTransform().Translation.X
                         TranslationY:=Playa2.GetTransform().Translation.Y
                          if(  LastXPosition[X]<>  TranslationX or LastYPosition[X]<>TranslationY):
                               Playa2.Damage(500.0)


               if(time=0):
                   AllPlayers5:=GetPlayspace().GetPlayers()
                     for(X:AllPlayers5):


                 break


       }

    Invisloop1(Agent:agent)<suspends>:void=
            {
              spawn:
                Invisloop(Agent)
            }
    Invisloop(Agent:agent)<suspends>:void=

        { var Pity:int= 0
                  Sleep(4.0)

                          if(Plo:= Agent.GetFortCharacter[]):
                            loop:
                              Sleep(0.1)
                                  if(Breaknum = 1):
                                        break
                                 if(TeleCheck.IsHoldingItem[Agent]):

                                  if(Pity=0):
                                    Rotation := Plo.GetViewRotation()
                                    Translation:=Plo.GetTransform().Translation
                                    set Pity =1
                                    L:= GetRandomInt(163584, 167168)
                                    M:= GetRandomInt(46400, 49900)
                                     Print("{L}")
                                     Print("{M}")
                                    Randy2:= L*1.0
                                    Randy1:= M*-1.0
                                     if(TelTele.TeleportTo[vector3{X:=Randy2, Y:=Randy1, Z:=Plo.GetTransform().Translation.Z}, Rotation]):
                                       if(Plo.IsActive[]):


                                        TelTele.Teleport(Agent)
                                      Sleep(1.0)

                                      set Pity = 0


              }
    RocketMut()<suspends>:void=
                {
                  Sleep(3.0)
                   RocketsMut.Disable()
                }
    RealInvisloop1(Agent:agent)<suspends>:void=
                {
                  spawn:
                    RealInvisloop(Agent)
                }
    RealInvisloop(Agent:agent)<suspends>:void=

            { var Pity:int= 0
               if(Play:= Agent.GetFortCharacter[]):
                      Sleep(1.0)

                              if(Plo:= Agent.GetFortCharacter[]):

                                loop:
                                  Sleep(0.1)

                                     if(Breaknum = 1):
                                      Play.Show()
                                     if(Breaknum = 1):
                                            break
                                  if(Play.IsActive[]):
                                     if(TeleCheck.IsHoldingItem[Agent]):
                                      Play.Hide()


                                     else:
                                        Play.Show()


                                          set Pity = 0


            }
    OneShotLoop()<suspends>:void=
     {
         loop:
          Sleep(10.0)
          if(Breaknum = 1):
            break
          AllPlayers:=GetPlayspace().GetPlayers()
            for(X:AllPlayers):
             if(X.GetFortCharacter[].IsActive[]):
               Rand:= GetRandomInt(0,7)
                 if(Gun:= SniperGranters[Rand]):
                   Gun.GrantItem(X)


     }
    EditLoop()<suspends>:void=
      { AllPlayers2:=GetPlayspace().GetPlayers()
             for(Y:AllPlayers2):
               if(Y.GetFortCharacter[].IsActive[]):
                  Speedy.Activate(Y)
          loop:
           Sleep(10.0)
           if(Breaknum = 1):
             break
           AllPlayers:=GetPlayspace().GetPlayers()
            for(X:AllPlayers):
             if(X.GetFortCharacter[].IsActive[]):
              Speedy.Activate(X)
              if(GameNumber = 14):
                Rand:= GetRandomInt(0,5)
                  EditGranter.SetNextItem(Rand)
                    EditGranter.GrantItem(X)


      }
    KnockLoop()<suspends>:void=
      {
         var SNum:int = 1
           P:= GetRandomInt(0,1)
           AllPlayers2:=GetPlayspace().GetPlayers()
            for(H:AllPlayers2):
             if(P=0):
               if(Gun:= KnockGranters1[0]):
                  Gun.GrantItem(H)
             else:
                if(Gun:= KnockGranters2[0]):
                   Gun.GrantItem(H)
          loop:
           Sleep(20.0)
                 if(Breaknum = 1):
                       break
            AllPlayers:=GetPlayspace().GetPlayers()
             for(X:AllPlayers):
              if(X.GetFortCharacter[].IsActive[]):
                if(SNum<4):
                 if(P=0):
                  if(Gun:= KnockGranters1[SNum]):
                    Gun.GrantItem(X)
                 else:
                  if(Gun:= KnockGranters2[SNum]):
                    Gun.GrantItem(X)
           set SNum+=1


      }
    Knockback(Dam:damage_result):void=
        {
             Print("nocky")

           if(Targ:= fort_character[Dam.Target]):

            if(Targy:= Targ.GetAgent[]):
              if(Inst1:= fort_character[Dam.Instigator?]):
                 if(Inst2:= Inst1.GetAgent[]):
                  if(Playa2:= player[Inst2]):
                   if(Playa:= player[Targy]):
                    if(Playa=Playa2):
                       Print("no")
                    else:
                        if(Playa.GetFortCharacter[].IsActive[]):
                         if(Playa2.GetFortCharacter[].IsActive[]):
                            Print("nocky1")
                           if(P:= Targy.GetFortCharacter[]):

                               if(Seter:= Floor[Dam.Amount]):
                                if(set Knocknum[player[Targy]]+=Seter):
                                 if(Innum:= Knocknummove[Playa2]):
                                   if(Knockery:= Knocker[Innum]):
                                            Print("nocky2")
                                    if(R:=Playa2.GetFortCharacter[]):
                                        Ran:= GetRandomInt(10000,20000)
                                        Ran2:= Ran*1.0
                                         Rot:= R.GetViewRotation()

                                          if(Knockery.TeleportTo[vector3{X:=0.0, Y:=0.0, Z:= Ran2}, Rot]):
                                            Print("nocky3")
                                              spawn:
                                                  Knocky(Playa, Playa2)


        }
    Knockback2(Dam:damage_result):void={
        #if(Targ:= fort_character[Dam.Target]):
         #if(Targy:= Targ.GetAgent[]):
         #  if(P:= Targy.GetFortCharacter[]):
          #  if(Dam.Amount<99.9):
          #    P.Heal(Dam.Amount)
          #    P.SetShield(100.0)
           #   Print("{Dam.Amount}")
           # else:
           #   Print("koo")
      }
    PotatoL(Dam:damage_result):void={
      Print("potatol")
     if(Targ:= fort_character[Dam.Target]):
      if(Targy:= Targ.GetAgent[]):
       if(Inst1:= fort_character[Dam.Instigator?]):
        if(Inst2:= Inst1.GetAgent[]):
         if(Pl:= PlayerPotato[0]):
          if(Pl=  Inst2 and Breaknum = 0):


           ClearGranter.GrantItem(Inst2)

            if(P:= Targy.GetFortCharacter[]):
             if(Targh:= player[Targy]):

                  Print("disabletatr")
                   DisableVFX.Trigger(Pl)
              Potato.Pickup(Targy)
              Rund:= GetRandomInt(0,9)
              if(d:= TaterGuns[Rund]):
                d.GrantItem(Targy)
               Print("pickuptater")
                if(set PlayerPotato[0]=Targh):

     }
    Knocky(Pli:player, L:player)<suspends>:void=
         {
           Print("knockers")
          if(Innum:= Knocknummove[L]):

            if(Knockery:= Knocker[Innum]):
              if(KnockerAm:= Knocknum[Pli]):
                Print("knockers2{KnockerAm}")
               if( Kl:= KnockerAm/ 120):
                 KlB:=Floor(Kl)
                 var Loo:int = 0
                      Print("knockers3{KlB}")
                  set Loo = KlB
                  loop:
                    Sleep(0.3)
                    Print("looping")
                     Knockery.Activate(Pli)
                    set Loo-=1
                    if(Loo<=0):
                       break
         }
    Taterloop()<suspends>:void=
      {
       var valid:[]player = array{}
       Print("Tatercall")
        AllPlayers:=GetPlayspace().GetPlayers()
        Sleep(1.0)
       if(Breaknum=0):
              for(L:AllPlayers):
                 if(o:= PlayerAlive[L]):
                   if(o=1):

                       set valid +=array{L}
           rando:= GetRandomInt(0,valid.Length-1)
            if(Play:=valid[rando]):
               if(set PlayerPotato[0]=Play):
                 Potato.Pickup(Play)
                 Rund:= GetRandomInt(0,9)
                  if(d:= TaterGuns[Rund]):
                    d.GrantItem(Play)
                   Print("Taterpickup")
                spawn:
                  Taterloop2()


      }
    Taterloop2()<suspends>:void=
        {
          var endnum:int = 0
             rando:= GetRandomInt(6,13)
            set endnum = rando
          loop:
             Sleep(1.0)
               if(Breaknum = 1):
                  break


              if(endnum=0):
                if(Play:= PlayerPotato[0]):

                 if(chary:= Play.GetFortCharacter[]):
                   Rotation:= chary.GetTransform().Rotation
                   Tran:= chary.GetTransform().Translation
                   if(TaterExplode.TeleportTo[Tran,  Rotation]):
                       TaterExplode.Reset()
                       TaterExplode.Explode(Play)
                       Print("Taterexplode")
                spawn:
                  Taterloop()
                break
            set endnum-=1


        }
    SwitchLoop()<suspends>:void=
    {

     var Num:int = 8
     var numspeed:int = 8
         loop:
          Sleep(1.0)
                if(Breaknum = 1):
                      break
               Print("{Num}")
                if(Num=2):
                    set Num = numspeed
                           if(numspeed>4):
                                set numspeed-=1


                           if(Breaknum = 1):
                                  break

                       spawn:
                        PutColor(ColorSwitchNumber)

                    Sleep(3.0)
            set Num-=1

    }
    PutColor(Inte:int)<suspends>:void=
    {
      Mov:vector3= vector3{X:=0.0,Y:=0.0,Z:=0.0}
      Mov2:vector3= vector3{X:=0.0,Y:=0.0,Z:=0.0}
      var Countnum:int = 0
             Print("putcolor{Inte}")


     if(Breaknum=0):

        if(Inte=7)     :
          Print("nufn")
        else:
          if(Ciny:=SwitchCins[Inte]):

              Ciny.Play()
        Sleep(2.5)
         for(X:SwitchCins):
           X.Stop()


         Randy:= GetRandomInt(0,6)
           set ColorSwitchNumber=Randy

                if(Game:=ColorSwitch[ColorSwitchNumber]):
                   Game.Show()

                if(Inte=7):
                   spawn:
                    SwitchLoop()

    }
    AddPoints1Red(Age:agent):void=
      {set TeamRednumCorn+=1
       Messages1score.Show(Age)
         if(TeamRednumCorn>=21):
          Playerfinish(Age, 6)

      }
    AddPoints2Red(Age:agent):void=
        {set TeamRednumCorn+=2
        Messages2score.Show(Age)
           if(TeamRednumCorn>=21):
            Playerfinish(Age, 6)

        }
    AddPoints1Blue(Age:agent):void=
          {set TeamBluenumCorn+=1
          Messages1score.Show(Age)
             if(TeamBluenumCorn>=21):
              Playerfinish(Age, 7)

          }
    AddPoints2Blue(Age:agent):void=
            {set TeamBluenumCorn+=2
            Messages2score.Show(Age)
               if(TeamBluenumCorn>=21):
                Playerfinish(Age, 7)

            }
    RedScore(Age:agent):void=
      {set TeamRednumFlag+=1
         if(TeamRednumFlag=2):

          Playerfinish(Age, 7)
      }
    BlueScore(Age:agent):void=
        { set TeamBluenumFlag+=1
          if(TeamBluenumFlag=2):
            Playerfinish(Age, 6)

        }
    Redlight1()<suspends>:void=
    {
      var numc:int = 1
         Sleep(6.0)
          loop:
              if(Breaknum = 1):
                break
            Sleep(1.0)
            Print("reddy")
             set numc -=1
             if(numc= 0 ):
              Rand2:= GetRandomInt(2,5)
               spawn:
                 Loopmove(Rand2*2)
              Sleep(4.0)
           if(numc=0):
            Rand1:= GetRandomInt(7,20)
             set numc = Rand1

    }
    LavaGranter()<suspends>:void=

      { AllPlayerss:=GetPlayspace().GetPlayers()
        loop:
         Sleep(3.0)
           if(Breaknum = 1):
             break
          for(X:AllPlayerss):
           if(X.GetFortCharacter[].IsActive[]):
             FloorlavaGranter.GrantItem(X)
      }
    AxeLoop()<suspends>:void=
      {
        var tryi:int = 170
        loop:
          Sleep(10.0)
           set tryi-=10
                if(Breaknum = 1):
                    break
             Rand:= GetRandomInt(0,14)
               if(Axe:=AxeGranter[Rand]):
                  AllPlayers:=GetPlayspace().GetPlayers()
                    for(X:AllPlayers):
                     if(X.GetFortCharacter[].IsActive[]):
                       Axe.GrantItem(X)
          if(tryi=0):
            AxeTimer.Reset()
          if(tryi=0):
             break
      }
    Countdown()<suspends>:void=

      { AllPlayerss:=GetPlayspace().GetPlayers()
         Sleep(1.0)

          for(X:AllPlayerss):
            if(X.GetFortCharacter[].IsActive[]):
             Start.Play(X)
        SpectateMut.Enable()
        SpectateMut2.Enable()
      }
    SkybaseLoop()<suspends>:void=

        { AllPlayerss:=GetPlayspace().GetPlayers()
          var Changenum:int = 0
          loop:
                Sleep(5.0)
                    if(Breaknum = 1):
                        break
                 for(X:AllPlayerss):
                  if(X.GetFortCharacter[].IsActive[]):
                    if(Changenum = 0 ):
                       SkybaseMats.GrantItem(X)

                    else:
                      Print("granted")

                      Randy:= GetRandomInt(0,20)
                      SkybaseGranter.SetNextItem(Randy)
                      SkybaseGranter.GrantItem(X)
                      #Randy2:= GetRandomInt(0,50)
                      #if(Randy2=0):
                      #  SkybaseGranter.SetNextItem(21)
                      #  SkybaseGranter.GrantItem(X)

            if(Changenum = 0 ):
              set Changenum = 1
            else:
               set Changenum = 0

        }
    PlayGame(Gamenum:int)<suspends>:void=

    {
       set GameNumber = Gamenum
            PlacerTrig2.Trigger()
      AllPlayerss:=GetPlayspace().GetPlayers()
       var AllPlayers1:[]player = array{}
        var AllPlayers:[]player = array{}
              set AllPlayers1=AllPlayerss
                      for(Y:=0..AllPlayerss.Length-1):

                        Randy:= GetRandomInt(0,AllPlayers1.Length-1)
                           if(Numy:= AllPlayers1[Randy]):
                               if (NewArray := AllPlayers1.RemoveElement[Randy]):
                                  set AllPlayers1= NewArray
                                      set AllPlayers += array{Numy}

                spawn:
                   Countdown()

      var num:int = 0
      if(Gamenum=0):
             GlassStorm.GenerateStorm()

            Bridgecin.Play()
            Print("Glass")


                     for(X:AllPlayers):

                      if(X.GetFortCharacter[].IsActive[]):
                        if(Mess:= Messages[0]):
                           Mess.Show(X)
                        if(Pla:= X.GetFortCharacter[]):
                          if(Pla.IsActive[]):
                           GlassTeleporter.Teleport(X)
                        if(Team:= Teams[num]):
                            Team.ChangeTeam(X)
                        if(Class:= Teams[10]):
                              Class.ChangeClass(X)
                       set num +=1

            Rand1:= GetRandomInt(0,1)
            Rand2:= GetRandomInt(0,1)


            Rand3:= GetRandomInt(0,1)
            Rand4:= GetRandomInt(0,1)
            Rand5:= GetRandomInt(0,1)
            Rand6:= GetRandomInt(0,1)
            Rand7:= GetRandomInt(0,1)
            Rand8:= GetRandomInt(0,1)
            Rand9:= GetRandomInt(0,1)
            Rand10:= GetRandomInt(0,1)
              if(Flo1:=GlassFloor1[Rand1],Flo2:=GlassFloor2[Rand2],Flo3:=GlassFloor3[Rand3],Flo4:=GlassFloor4[Rand4],Flo5:=GlassFloor5[Rand5],Flo6:=GlassFloor6[Rand6],Flo7:=GlassFloor7[Rand7],Flo8:=GlassFloor8[Rand8],Flo9:=GlassFloor9[Rand9],Flo10:=GlassFloor10[Rand10]):
                 Flo1.Enable(),Flo2.Enable(),Flo3.Enable(),Flo4.Enable(),Flo5.Enable(),Flo6.Enable(),Flo7.Enable(),Flo8.Enable(),Flo9.Enable(),Flo10.Enable()
          Sleep(4.0)


      if(Gamenum=1):


                    Print("pickaxe only")
                      Rotation:= LateStorm.GetTransform().Rotation

                           if(LateStorm.TeleportTo[vector3{X:=-53429.477836, Y:= -196115.813667, Z:= -1097.560148}, Rotation]):
                      LateStorm.GenerateStorm()
                  for(X:AllPlayers):
                   if(X.GetFortCharacter[].IsActive[]):
                      BoxTimer.Start(X)

                      if(Mess:= Messages[1]):
                        Mess.Show(X)
                      if(Team:= Teams[num]):
                          Team.ChangeTeam(X)
                      if(CL:= Teams[6]):
                            CL.ChangeClass(X)
                      if(LateGameTele:= LateTeleporters2[num]):

                             LateGameTele.Teleport(X)
                      if(Pla:= X.GetFortCharacter[]):
                          Pla.PutInStasis(stasis_args{AllowTurning:=false})
                     set num +=1
                LateStorm.GenerateStorm()
              Sleep(4.0)
               for(X:AllPlayers):
                if(X.GetFortCharacter[].IsActive[]):
                  if(Pla:= X.GetFortCharacter[]):
                   Pla.ReleaseFromStasis()

               for(Y:Bars):
                     Y.Disable()
              Sleep(5.0)
                   TrigSky.Trigger()
                 AxeTimer.Start()
           spawn:

            AxeLoop()


      if(Gamenum=2):
          BoxStorm.GenerateStorm()

            Print("timewarp")

            Rand1:= GetRandomInt(0,4)
              if(Time:=TimeWarps[Rand1]):
                  Time.Play()

         for(X:AllPlayers):
          if(X.GetFortCharacter[].IsActive[]):
            NormGranter.GrantItem(X)

            BoxTimer.Start(X)
              if(Mess:= Messages[2]):
                 Mess.Show(X)
              if(Team:= Teams[num]):
                 Team.ChangeTeam(X)
              if(CL:= Teams[6]):
                 CL.ChangeClass(X)
              if(BoxTeles:= BoxTeleporters[num]):

                   BoxTeles.Teleport(X)
             set num +=1
         Sleep(8.0)
           for(Y:Bars):
               Y.Disable()
      if(Gamenum=3):


          BoxStorm.GenerateStorm()
                    Print("teleporter")

              for(X:AllPlayers):
                if(X.GetFortCharacter[].IsActive[]):
                  TeleGranter.GrantItem(X)
                     BoxTimer.Start(X)
                    if(Mess:= Messages[3]):
                       Mess.Show(X)

                    if(Team:= Teams[num]):
                        Team.ChangeTeam(X)
                    if(BoxTeles:= BoxTeleporters[num]):

                          BoxTeles.Teleport(X)
                    if(CL:= Teams[6]):
                          CL.ChangeClass(X)

                  set num +=1
           Sleep(8.0)
                for(Y:Bars):
                    Y.Disable()


           for(Y:AllPlayers):
            if(Y.GetFortCharacter[].IsActive[]):
              spawn:
               Invisloop1(Y)
      if(Gamenum=4):
        Print("no")


      if(Gamenum=5):


          SniperStorm.GenerateStorm()

          SniperTimer.Start()
                 var  numer:int = 0

                   for(v:GGspawns):
                        if(K:= SnipySpawn[numer]):
                          Print("{K}")
                            Rotation:= v.GetTransform().Rotation

                             if(v.TeleportTo[K, Rotation]):
                             Pos:= v.GetTransform().Translation
                              Print("{Pos}")
                     set numer+=1

           var Changenum:int = 0
                  Print("snipersrunners")
              if(Class:= Teams[2]):

               for(X:AllPlayers):
                if(X.GetFortCharacter[].IsActive[]):
                   BoxTimer.Start(X)
                     if(Pla:= X.GetFortCharacter[]):
                              Pla.PutInStasis(stasis_args{AllowTurning:=false})

                     if(Changenum=0):

                       SniperTeleport.Teleport(X)
                       SniperGranter.GrantItem(X)
                       if(set PlayerAliveTeamWin[X]=6):
                       if(Mess:= Messages[5]):
                        Mess.Show(X)
                       if(Class2:= Teams[12]):
                        Class2.ChangeClass(X)
                     if(Changenum=1):
                      if(set PlayerAliveTeamWin[X]=7):
                        if(Mess:= Messages[6]):
                           Mess.Show(X)
                      Class.ChangeClass(X)
                        RunnerTeleport.Teleport(X)

                     if(Changenum=0):
                        set Changenum = 1
                         if(Team:= Teams[0]):
                                Team.ChangeTeam(X)
                     else:
                        if(Team:= Teams[1]):
                          Team.ChangeTeam(X)
                        set Changenum = 0
                   set num +=1

              Sleep(4.0)
                for(X:AllPlayers):
                  if(X.GetFortCharacter[].IsActive[]):
                    if(Pla:= X.GetFortCharacter[]):
                     Pla.ReleaseFromStasis()


      if(Gamenum=6):
          PlatformStorm.GenerateStorm()

                    Print("bumpercars")
                  for(X:AllPlayers):
                   if(X.GetFortCharacter[].IsActive[]):
                      BoxTimer.Start(X)
                      if(Mess:= Messages[7]):
                        Mess.Show(X)
                      if(Team:= Teams[num]):
                          Team.ChangeTeam(X)
                          if(CL:= Teams[6]):
                            CL.ChangeClass(X)
                      if(Car:= BumperCars[num]):
                        Car.Enable()
                        Car.Enable()
                        Car.AssignDriver(X)
                      if(Pla:= X.GetFortCharacter[]):
                          Pla.PutInStasis(stasis_args{AllowTurning:=false})
                     set num +=1
                var num2:int = 0


                for(U:BumperCars):
                         if(num2<num) :
                               Print("no")
                         else:
                           U.DestroyVehicle()
                      set num2 +=1


                Speedup.Play()

               Sleep(4.0)
                 for(X:AllPlayers):
                  if(X.GetFortCharacter[].IsActive[]):
                   if(Pla:= X.GetFortCharacter[]):
                    Pla.ReleaseFromStasis()

                for(Y:Bars):
                    Y.Disable()

      if(Gamenum=7):

                Rotation:= LateStorm.GetTransform().Rotation

                       if(LateStorm.TeleportTo[vector3{X:=-51160.980827, Y:= -176691.613328, Z:= 10392.0}, Rotation]):
          LateStorm.GenerateStorm()

                      Print("buhga")
                    for(X:AllPlayers):
                     if(X.GetFortCharacter[].IsActive[]):
                        BoxTimer.Start(X)
                        if(Mess:= Messages[8]):
                          Mess.Show(X)
                        ZWGranter.GrantItem(X)
                        if(Team:= Teams[num]):
                            Team.ChangeTeam(X)
                        if(CL:= Teams[6]):
                              CL.ChangeClass(X)
                        if(LateGameTele:= LateTeleporters[num]):

                          LateGameTele.Teleport(X)
                        if(Pla:= X.GetFortCharacter[]):
                            Pla.PutInStasis(stasis_args{AllowTurning:=false})
                       set num +=1

                Sleep(4.0)
                 for(X:AllPlayers):
                  if(X.GetFortCharacter[].IsActive[]):
                    if(Pla:= X.GetFortCharacter[]):
                     Pla.ReleaseFromStasis()
                Sleep(5.0)
                TrigSky.Trigger()

      if(Gamenum=8):

          OneStorm.GenerateStorm()

          if(Class:= Teams[3]):
                        Print("oneshot")
                      for(X:AllPlayers):
                       if(X.GetFortCharacter[].IsActive[]):
                          BoxTimer.Start(X)
                          if(Mess:= Messages[9]):
                            Mess.Show(X)
                          Sniper2Granter.GrantItem(X)
                          if(Team:= Teams[num]):
                              Team.ChangeTeam(X)
                               Class.ChangeClass(X)
                          if(Tele:= BounceTeles[num]):
                            Tele.Teleport(X)
                          if(Pla:= X.GetFortCharacter[]):
                              Pla.PutInStasis(stasis_args{AllowTurning:=false})
                         set num +=1

                 Sleep(4.0)
                 for(X:AllPlayers):
                  if(X.GetFortCharacter[].IsActive[]):
                   if(Pla:= X.GetFortCharacter[]):
                     Pla.ReleaseFromStasis()
                spawn:
                  OneShotLoop()

      if(Gamenum=9):

        #  GG1spawner.Play()
         ChambStorm.GenerateStorm()
                 set RealGGranter=GG2Granter
                for(Y:=0..RealGGranter.Length-1):

                    Randy:= GetRandomInt(0,RealGGranter.Length-1)
                      if(Numy:= RealGGranter[Randy]):
                         if (NewArray := RealGGranter.RemoveElement[Randy]):
                           set RealGGranter= NewArray
                               set RealG2Granter += array{Numy}
          if(Gun:= RealG2Granter[0]):
           if(Team1:= Teams[0]):
                      var  numer:int = 0

                             for(v:GGspawns):
                                if(K:= GGSpawn[numer]):
                                   Rotation:= v.GetTransform().Rotation
                                   Print("{K}")
                                   if(v.TeleportTo[K, Rotation]):
                                    Print("success")
                                    Pos:= v.GetTransform().Translation
                                    Print("{Pos}")
                               set numer+=1
                          Print("gungame")
                          for(X:AllPlayers):
                           if(X.GetFortCharacter[].IsActive[]):
                            BoxTimer.Start(X)
                                 if(Mess:= Messages[10]):
                                    Mess.Show(X)

                                   Gun.GrantItem(X)


                            if(Team:= Teams[num]):
                                Team.ChangeTeam(X)

                                Team1.ChangeClass(X)
                            if(ZBTeles:= ZBTeleporters[num]):
                              ZBTeles.Teleport(X)
                            if(Pla:= X.GetFortCharacter[]):
                                Pla.PutInStasis(stasis_args{AllowTurning:=false})
                            set num +=1

               Sleep(4.0)
                for(X:AllPlayers):
                  if(X.GetFortCharacter[].IsActive[]):
                    if(Pla:= X.GetFortCharacter[]):
                         Pla.ReleaseFromStasis()
                    spawn:
                        PutElims(X)
      if(Gamenum=10):

         PlaneStorm.GenerateStorm()

                            Print("airplanes")
                    for(X:AllPlayers):
                     if(X.GetFortCharacter[].IsActive[]):
                      BoxTimer.Start(X)
                      if(Mess:= Messages[11]):
                        Mess.Show(X)
                      if(Plane:= Planes[num]):

                         Print("inplane")
                         Plane.AssignDriver(X)
                         Plane.AssignDriver(X)
                           if(Team:= Teams[num]):
                               Team.ChangeTeam(X)
                           if(Class:= Teams[6]):
                               Class.ChangeClass(X)
                           if(Pla:= X.GetFortCharacter[]):
                                Pla.PutInStasis(stasis_args{AllowTurning:=false})


                          set num +=1
               var num2:int = 0

                           set num2 +=1
              Speedup.Play()

              Sleep(4.0)
               for(X:AllPlayers):
                if(X.GetFortCharacter[].IsActive[]):
                   if(Pla:= X.GetFortCharacter[]):
                        Pla.ReleaseFromStasis()


      if(Gamenum=11):
                              Print("2dgun")
                                    set RealGGranter=GG2Granter
                                   for(Y:=0..RealGGranter.Length-1):

                                     Randy:= GetRandomInt(0,RealGGranter.Length-1)
                                       if(Numy:= RealGGranter[Randy]):
                                         if (NewArray := RealGGranter.RemoveElement[Randy]):
                                          set RealGGranter= NewArray
                                              set RealG2Granter += array{Numy}
                              #GGspawner.Play()
                              Speedup.Play()
                              TwoDStorm.GenerateStorm()
                                    var  numer:int = 0

                                     for(v:GGspawns):
                                       if(K:= GG2Spawn[numer]):
                                         Rotation:= v.GetTransform().Rotation
                                         Print("{K}")
                                          if(v.TeleportTo[K, Rotation]):
                                            Print("success")
                                            Pos:= v.GetTransform().Translation
                                             Print("{Pos}")
                                       set numer+=1
                              if(Gun:= RealG2Granter[0]):
                                if(Team1:= Teams[0]):


                                          for(X:AllPlayers):
                                           if(X.GetFortCharacter[].IsActive[]):
                                            BoxTimer.Start(X)
                                                if(Mess:= Messages[12]):
                                                   Mess.Show(X)
                                                       Gun.GrantItem(X)
                                                       Trig.Trigger(X)


                                                if(Team:= Teams[num]):
                                                    Team.ChangeTeam(X)
                                                    Team1.ChangeClass(X)
                                                if(Tele:= OneShotTeleporters[num]):
                                                      Tele.Teleport(X)
                                                if(Pla:= X.GetFortCharacter[]):
                                                    Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                               set num +=1

                                   Sleep(4.0)
                                    for(X:AllPlayers):
                                      if(X.GetFortCharacter[].IsActive[]):
                                        if(Pla:= X.GetFortCharacter[]):
                                             Pla.ReleaseFromStasis()
                                        spawn:
                                          PutElims(X)


      if(Gamenum=12):


                                Print("rocketcars")
                     var Switchnum:int = 0

                               RocketCarTimer.Start()
                               RocketsMut.Enable()
                                           ChambStorm.GenerateStorm()
                                            for(X:AllPlayers):
                                             if(X.GetFortCharacter[].IsActive[]):
                                                  Print("loop")
                                                  BoxTimer.Start(X)


                                                  if(Team:= Teams[0]):
                                                   if(Team1:= Teams[1]):
                                                    if(Team2:= Teams[2]):
                                                        if(Switchnum=0):
                                                         Team.ChangeTeam(X)
                                                         if(set PlayerAliveTeam[X]=6):
                                                         if(set PlayerAliveTeamWin[X]=6):
                                                          RocketTele.Teleport(X)
                                                          RocketGranter.GrantItem(X)
                                                          Team.ChangeClass(X)
                                                          if(Mess:= Messages[14]):
                                                            Mess.Show(X)
                                                        else:
                                                          if(set PlayerAliveTeam[X]=7):
                                                          if(set PlayerAliveTeamWin[X]=7):
                                                          Team1.ChangeTeam(X)
                                                          CarTele.Teleport(X)
                                                          Team.ChangeClass(X)
                                                          if(Mess:= Messages[13]):
                                                             Mess.Show(X)


                                                  if(Pla:= X.GetFortCharacter[]):
                                                      Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                 if(Switchnum=0):
                                                   set Switchnum = 1
                                                 else:
                                                  set Switchnum = 0
                                               set num +=1

                                  Sleep(4.0)
                                      for(X:AllPlayers):
                                        if(X.GetFortCharacter[].IsActive[]):
                                          if(Pla:= X.GetFortCharacter[]):
                                               Pla.ReleaseFromStasis()

                                     for(Y:Bars):
                                         Y.Disable()
                                    spawn:
                                      RocketMut()

      if(Gamenum=13):
         ShipmentStorm.GenerateStorm()
          Print("onechamb")


          for(X:AllPlayers):
           if(X.GetFortCharacter[].IsActive[]):
            BoxTimer.Start(X)
            if(Mess:= Messages[15]):
              Mess.Show(X)
            ChamberGranter.GrantItem(X)
            if(Team:= Teams[num]):
               Team.ChangeTeam(X)
            if(CL:= Teams[10]):
                CL.ChangeClass(X)
            if(BoxTeles:= ZBTeleporters[num]):
                 BoxTeles.Teleport(X)
            if(Pla:= X.GetFortCharacter[]):
                  Pla.PutInStasis(stasis_args{AllowTurning:=false})
            set num +=1

          Sleep(4.0)
           for(X:AllPlayers):
            if(X.GetFortCharacter[].IsActive[]):
               if(Pla:= X.GetFortCharacter[]):
                 Pla.ReleaseFromStasis()
      if(Gamenum=14):

                                    Print("editwars")

                      EditwarStorm.GenerateStorm()


           for(X:AllPlayers):
            if(X.GetFortCharacter[].IsActive[]):

             BoxTimer.Start(X)

             if(Mess:= Messages[16]):
              Mess.Show(X)
             if(Team:= Teams[0]):
               Team.ChangeTeam(X)
             if(CL:= Teams[12]):
                CL.ChangeClass(X)
             if(EditTeles:= EditTeleporters[num]):
                 EditTeles.Teleport(X)
             if(Pla:= X.GetFortCharacter[]):
                  Pla.PutInStasis(stasis_args{AllowTurning:=false})
             set num +=1

           Sleep(4.0)
            for(X:AllPlayers):
              if(X.GetFortCharacter[].IsActive[]):
                Speedy.Activate(X)
                 if(Pla:= X.GetFortCharacter[]):
                          Pla.ReleaseFromStasis()
         spawn:
          EditLoop()

      if(Gamenum=15):
                                     Print("colorswitch")

                                   ColorStorm.GenerateStorm()


                                    for(X:AllPlayers):
                                     if(X.GetFortCharacter[].IsActive[]):
                                      BoxTimer.Start(X)
                                          if(Team:= Teams[num]):
                                            Team.ChangeTeam(X)
                                          if(CL:= Teams[6]):
                                                CL.ChangeClass(X)
                                          if(Mess:= Messages[17]):
                                              Mess.Show(X)
                                          if(Cah:= ColorDashCars[num]):
                                             Cah.Enable()
                                             Cah.Enable()
                                             Cah.AssignDriver(X)
                                        set num+=1


                                         if(Pla:= X.GetFortCharacter[]):
                                          Pla.PutInStasis(stasis_args{AllowTurning:=false})
                            var num2:int = 0
                             for(U:ColorDashCars):
                               if(num2<num) :
                                    Print("no")
                               else:
                                 U.DestroyVehicle()

                              set num2 +=1

                      Sleep(4.0)
                        spawn:
                          PutColor(7)
                      Sleep(0.1)
                             for(X:AllPlayers):
                               if(X.GetFortCharacter[].IsActive[]):
                                       if(Pla:= X.GetFortCharacter[]):
                                              Pla.ReleaseFromStasis()
                    SwitchProp.HideProps()


      if(Gamenum=17):
                                        Print("onlyup")

                                      Upcin.Play()
                                     #  Upcin.GoToEndAndStop()
                                     #  Upcin.Play()


                                        UpStorm.GenerateStorm()
                                        var  numer:int = 0


                                if(Class:= Teams[11]):

                                      for(X:AllPlayers):
                                       if(X.GetFortCharacter[].IsActive[]):
                                        BoxTimer.Start(X)
                                        if(Mess:= Messages[19]):
                                          Mess.Show(X)
                                          Class.ChangeClass(X)
                                        if(Team:= Teams[num]):
                                           Team.ChangeTeam(X)

                                             OnlyUpTeles.Teleport(X)


                                        set num +=1


      if(Gamenum=18):
                      Print("rocketbounce")

                      OneStorm.GenerateStorm()
                      Rand1:= GetRandomInt(0,4)


                      for(X:AllPlayers):
                       if(X.GetFortCharacter[].IsActive[]):
                        BoxTimer.Start(X)
                        if(Mess:= Messages[20]):
                          Mess.Show(X)
                        RocketyGranter.GrantItem(X)
                        if(Team:= Teams[num]):
                           Team.ChangeTeam(X)
                        if(CL:= Teams[13]):
                            CL.ChangeClass(X)
                        if(Teles:= BounceTeles[num]):
                              Teles.Teleport(X)
                        if(Pla:= X.GetFortCharacter[]):
                                Pla.PutInStasis(stasis_args{AllowTurning:=false})
                       set num +=1

             Sleep(4.0)
              for(X:AllPlayers):
                if(X.GetFortCharacter[].IsActive[]):
                  if(Pla:= X.GetFortCharacter[]):
                       Pla.ReleaseFromStasis()

      if(Gamenum=19):
                                    Print("explosivebox")
                                    BoxStorm.GenerateStorm()


                                    for(X:AllPlayers):
                                     if(X.GetFortCharacter[].IsActive[]):
                                      Ran:= GetRandomInt(0,3)
                                      if(Granter:= ExplosiveGranter[Ran]):
                                        Granter.GrantItem(X)
                                      BoxTimer.Start(X)
                                      if(Mess:= Messages[21]):
                                        Mess.Show(X)
                                      if(BoxTeles:= BoxTeleporters[num]):
                                        BoxTeles.Teleport(X)


                                      if(Team:= Teams[num]):
                                         Team.ChangeTeam(X)
                                      if(CL:= Teams[6]):
                                         CL.ChangeClass(X)

                                      set num +=1

                               Sleep(8.0)
                                for(Y:Bars):
                                  Y.Disable()

      if(Gamenum=20):
                                      Print("ventwars")

                                      #Ventspawner.Play()
                                      Speedup.Play()
                                      VentStorm.GenerateStorm()
                                              var  numer:int = 0

                                                   for(v:GGspawns):
                                                        if(K:= VentSpawn[numer]):
                                                           Rotation:= v.GetTransform().Rotation

                                                            if(v.TeleportTo[K, Rotation]):
                                                      set numer+=1
                                       if(Team1:= Teams[4]):

                                                   for(X:AllPlayers):
                                                    if(X.GetFortCharacter[].IsActive[]):
                                                      BoxTimer.Start(X)
                                                        if(Mess:= Messages[22]):
                                                              Mess.Show(X)
                                                               VWGranter.GrantItem(X)


                                                        if(Team:= Teams[num]):
                                                            Team.ChangeTeam(X)

                                                            Team1.ChangeClass(X)
                                                        if(ZBTeles:= VentTeleporters[num]):
                                                          ZBTeles.Teleport(X)
                                                        if(Pla:= X.GetFortCharacter[]):
                                                            Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                       set num +=1

                                           Sleep(4.0)
                                            for(X:AllPlayers):
                                             if(X.GetFortCharacter[].IsActive[]):
                                                if(Pla:= X.GetFortCharacter[]):
                                                     Pla.ReleaseFromStasis()

                                                spawn:
                                                       PutElims(X)
      if(Gamenum=21):

                                                      Print("dodgeball")

                                                     var Changenum:int = 0

                                                      DodgeBallStorm.GenerateStorm()
                                                    if(Team1:= Teams[4]):
                                                     if(CL:= Teams[5]):

                                                       for(X:AllPlayers):
                                                        if(X.GetFortCharacter[].IsActive[]):
                                                          BoxTimer.Start(X)

                                                                    if(Mess:= Messages[23]):
                                                                       Mess.Show(X)


                                                                    if(Changenum=0):
                                                                      if(set PlayerAliveTeam[X]=6):
                                                                      if(set PlayerAliveTeamWin[X]=6):
                                                                              RedDodgeTeleport.Teleport(X)

                                                                    if(Changenum=1):
                                                                              BlueDodgeTeleport.Teleport(X)
                                                                              if(set PlayerAliveTeam[X]=7):
                                                                              if(set PlayerAliveTeamWin[X]=7):

                                                               CL.ChangeClass(X)
                                                             if(Changenum=0):
                                                                set Changenum = 1
                                                                 if(Team:= Teams[0]):
                                                                        Team.ChangeTeam(X)
                                                             else:
                                                                if(Team:= Teams[1]):
                                                                  Team.ChangeTeam(X)
                                                                set Changenum = 0


                                                    Sleep(4.0)
                                                            for(X:AllPlayers):
                                                             if(X.GetFortCharacter[].IsActive[]):

                                                      for(Y:Bars):
                                                          Y.Disable()
      if(Gamenum=22):
                                                                      Print("spleef")

                                                                      SpleefStorm.GenerateStorm()

                                    for(X:AllPlayers):
                                     if(X.GetFortCharacter[].IsActive[]):
                                         Speedy.Activate(X)
                                       BoxTimer.Start(X)
                                          if(Mess:= Messages[24]):
                                             Mess.Show(X)
                                          SpleefGranter.GrantItem(X)
                                          if(Team:= Teams[num]):
                                              Team.ChangeTeam(X)
                                          if(CL:= Teams[12]):
                                               CL.ChangeClass(X)
                                          if(BoxTeles:= SpleefTeleporters[num]):
                                               BoxTeles.Teleport(X)
                                          if(Pla:= X.GetFortCharacter[]):
                                                Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                        set num +=1


                          Sleep(4.0)
                            for(X:AllPlayers):
                                if(X.GetFortCharacter[].IsActive[]):
                                            if(Pla:= X.GetFortCharacter[]):
                                                 Pla.ReleaseFromStasis()
                     spawn:
                       EditLoop()
        Print("woopig")


      if(Gamenum=23):
          Print("Orbitteammatch")

        OrbitStorm.GenerateStorm()
            var Changenum:int = 0

                                                  if(Team1:= Teams[15]):
                                                    Trig5.Trigger()


                                                     TrigOrbit.Trigger()
                                                           for(O:BlueChecks):
                                                                 O.Enable()
                                                           for(O:RedChecks):
                                                                O.Enable()
                                                           for(Y:Spawns):
                                                                  Y.Enable()
                                                        var numer:int = 0
                                                          for(v:GGspawns):

                                                             Rotation:= v.GetTransform().Rotation

                                                               if(v.TeleportTo[vector3{X:=-164962.324166,Y:=197095.190797,Z:=34196.750021 }, Rotation]):
                                                                set numer+=1
                                                       for(X:AllPlayers):
                                                        if(X.GetFortCharacter[].IsActive[]):


                                                          BoxTimer.Start(X)
                                                          #TrigOrbit.Trigger(X)
                                                          OrbitGranter.GrantItem(X)
                                                          Team1.ChangeClass(X)

                                                                    if(Mess:= Messages[25]):
                                                                       Mess.Show(X)


                                                                    if(Changenum=0):
                                                                      if(set PlayerAliveTeam[X]=6):
                                                                      if(set PlayerAliveTeamWin[X]=6):
                                                                              RedOrbitTeleport.Teleport(X)
                                                                              set Changenum = 1

                                                                      if(Team:= TeamsPit[18]):
                                                                          Team.ChangeTeam(X)

                                                                    else:
                                                                              BlueOrbitTeleport.Teleport(X)
                                                                              if(set PlayerAliveTeam[X]=7):
                                                                              if(set PlayerAliveTeamWin[X]=7):
                                                                               if(Team:= TeamsPit[19]):
                                                                                  Team.ChangeTeam(X)
                                                                                set Changenum = 0


                                                  Sleep(4.0)
                                                   for(X:AllPlayers):
                                                    if(X.GetFortCharacter[].IsActive[]):
                                                     if(Num:=PlayerAliveTeam[X]):

                                                      spawn:
                                                            PutRedvsBlue(X,Num)
                                                      spawn:
                                                            TeamCheckpoints()
      if(Gamenum=24):
                            Print("captflag")
                            OrbitStorm.GenerateStorm()
                            var Changenum:int = 0

                                                            RedFlag.Enable()
                                                            BlueFlag.Enable()
                                                            RedArea.Enable()
                                                            BlueArea.Enable()
                                                            RedArea.ItemIsConsumedEvent.Subscribe(BlueScore)
                                                            BlueArea.ItemIsConsumedEvent.Subscribe(RedScore)
                                                                               for(v:GGspawns):

                                                                                    Rotation:= v.GetTransform().Rotation

                                                                                        if(v.TeleportTo[vector3{X:=-164962.324166,Y:=197095.190797,Z:=34196.750021 }, Rotation]):
                                                                              for(O:BlueChecks):
                                                                                 O.Enable()
                                                                              for(O:RedChecks):
                                                                                  O.Enable()
                                                                    if(Team1:= Teams[15]):


                                                                       for(X:AllPlayers):
                                                                        if(X.GetFortCharacter[].IsActive[]):
                                                                          BoxTimer.Start(X)
                                                                          Team1.ChangeClass(X)
                                                                          OrbitGranter.GrantItem(X)

                                                                                    if(Mess:= Messages[26]):
                                                                                       Mess.Show(X)


                                                                                    if(Changenum=0):
                                                                                      if(set PlayerAliveTeam[X]=6):
                                                                                      if(set PlayerAliveTeamWin[X]=6):
                                                                                              RedOrbitTeleport.Teleport(X)
                                                                                              set Changenum = 1


                                                                                      if(Team:= TeamsPit[18]):
                                                                                          Team.ChangeTeam(X)

                                                                                    else:
                                                                                              BlueOrbitTeleport.Teleport(X)
                                                                                              if(set PlayerAliveTeam[X]=7):
                                                                                              if(set PlayerAliveTeamWin[X]=7):
                                                                                               if(Team:= TeamsPit[19]):
                                                                                                  Team.ChangeTeam(X)
                                                                                                set Changenum = 0


                                                       Sleep(4.0)
                                                              for(X:AllPlayers):
                                                                 if(X.GetFortCharacter[].IsActive[]):
                                                                              if(Num:=PlayerAliveTeam[X]):

                                                                                spawn:
                                                                                  PutRedvsBlue(X,Num)
                                                                                spawn:
                                                                                    TeamCheckpoints()

      if(Gamenum=25):
        Print("Potato")
        PotatoStorm.GenerateStorm()
                    if(Cl:= Teams[14]):
                           for(X:AllPlayers):

                            if(X.GetFortCharacter[].IsActive[]):
                              BoxTimer.Start(X)
                                if(Playu:= X.GetFortCharacter[]):
                                  Set:= Playu.DamagedShieldEvent().Subscribe(PotatoL)
                                    if(set  PlayerCancels3[X]=Set):
                                  if(Mess:= Messages[27]):
                                      Mess.Show(X)
                                  if(Pla:= X.GetFortCharacter[]):
                                         Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                  Cl.ChangeClass(X)
                                  if(Team:= Teams[num]):
                                          Team.ChangeTeam(X)
                             set num+=1
                               PotatoTeleport.Teleport(X)
                     Sleep(4.0)
                         for(X:AllPlayers):
                          if(X.GetFortCharacter[].IsActive[]):
                             if(Pla:= X.GetFortCharacter[]):
                                     Pla.ReleaseFromStasis()
              spawn:
                Taterloop()
      if(Gamenum=26):
                  Print("cornhole")
                  CornStorm.GenerateStorm()
                  var Changenum:int = 0


                                                   Red1points.AgentEntersEvent.Subscribe(AddPoints1Red)
                                                   Blue1points.AgentEntersEvent.Subscribe(AddPoints1Blue)
                                                   Blue2points.AgentEntersEvent.Subscribe(AddPoints2Blue)
                                                   Red2points.AgentEntersEvent.Subscribe(AddPoints2Red)
                                                          if(Team1:= Teams[15]):
                                                                 BlueChecksCorn.Enable()
                                                                 RedChecksCorn.Enable()
                                                             for(X:AllPlayers):
                                                              if(X.GetFortCharacter[].IsActive[]):
                                                                BoxTimer.Start(X)
                                                                Team1.ChangeClass(X)


                                                                          if(Mess:= Messages[28]):
                                                                             Mess.Show(X)


                                                                          if(Changenum=0):
                                                                            if(set PlayerAliveTeam[X]=6):
                                                                            if(set PlayerAliveTeamWin[X]=6):
                                                                                    RedCornTeleport.Teleport(X)
                                                                                    set Changenum = 1


                                                                            if(Team:= TeamsPit[18]):
                                                                                Team.ChangeTeam(X)
                                                                            RedChecksCorn.Register(X)

                                                                          else:
                                                                             BlueChecksCorn.Register(X)
                                                                                    BlueCornTeleport.Teleport(X)
                                                                                    if(set PlayerAliveTeam[X]=7):
                                                                                    if(set PlayerAliveTeamWin[X]=7):
                                                                                     if(Team:= TeamsPit[19]):
                                                                                        Team.ChangeTeam(X)
                                                                                      set Changenum = 0


                                             Sleep(4.0)
                                                    for(X:AllPlayers):
                                                       if(X.GetFortCharacter[].IsActive[]):
                                                                    if(Num:=PlayerAliveTeam[X]):

                                                                      spawn:
                                                                        PutRedvsBlue(X,Num)
      if(Gamenum=27):
                                                                          Print("weirdlootbox")
                                                                          BoxStorm.GenerateStorm()


                                                                          for(X:AllPlayers):
                                                                           if(X.GetFortCharacter[].IsActive[]):
                                                                            BoxTimer.Start(X)
                                                                            if(Mess:= Messages[29]):
                                                                              Mess.Show(X)
                                                                            if(BoxTeles:= BoxTeleporters[num]):
                                                                              BoxTeles.Teleport(X)
                                                                            Ran:= GetRandomInt(0,3)
                                                                             if(Granter:= WeirdGranter[Ran]):
                                                                                       Granter.GrantItem(X)
                                                                            if(Team:= Teams[num]):
                                                                               Team.ChangeTeam(X)
                                                                            if(CL:= Teams[6]):
                                                                               CL.ChangeClass(X)

                                                                           set num +=1

                                                                     Sleep(8.0)
                                                                      for(Y:Bars):
                                                                        Y.Disable()
      if(Gamenum=28):
                                                                          Print("sniperfp")
                                                                    SnipeSpawn.Play()
                                                                    OrbitStorm.GenerateStorm()


                                                                           for(O:RedChecks):
                                                                             O.Disable()
                                                                           for(O:BlueChecks):
                                                                              O.Disable()
                                                                           for(Y:Spawns):
                                                                            Y.Disable()

                                                                         for(X:AllPlayers):
                                                                          if(X.GetFortCharacter[].IsActive[]):


                                                                            BoxTimer.Start(X)
                                                                            if(Mess:= Messages[30]):
                                                                              Mess.Show(X)
                                                                            if(BoxTeles:= SniperTeleporters[num]):
                                                                              BoxTeles.Teleport(X)
                                                                            SnapeGranter.GrantItem(X)
                                                                            if(Team:= Teams[num]):
                                                                               Team.ChangeTeam(X)
                                                                            if(CL:= Teams[0]):
                                                                               CL.ChangeClass(X)
                                                                            if(Pla:= X.GetFortCharacter[]):
                                                                                Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                                           set num +=1

                                                                     Sleep(4.0)
                                                                      for(Y:Bars):
                                                                        Y.Disable()
                                                                      for(X:AllPlayers):
                                                                        if(X.GetFortCharacter[].IsActive[]):


                                                                               if(Pla:= X.GetFortCharacter[]):
                                                                                       Pla.ReleaseFromStasis()
                                                                         spawn:
                                                                           PutElims(X)


      if(Gamenum=29):


                                                                            Print("lava zw")
                                                                              Rotation:= LateStorm.GetTransform().Rotation
                                                                               LavaZW.Play()
                                                                                   LavaStorm.GenerateStorm()
                                                                            for(X:AllPlayers):
                                                                             if(X.GetFortCharacter[].IsActive[]):
                                                                              BoxTimer.Start(X)
                                                                              LavaZoneGranter.GrantItem(X)
                                                                              if(Mess:= Messages[31]):
                                                                                Mess.Show(X)
                                                                              if(Team:= Teams[num]):
                                                                                  Team.ChangeTeam(X)
                                                                              if(CL:= Teams[5]):
                                                                                    CL.ChangeClass(X)
                                                                              if(LateGameTele:= LavazwTeleporters[num]):
                                                                                     LateGameTele.Teleport(X)
                                                                              if(Pla:= X.GetFortCharacter[]):
                                                                                  Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                                              set num +=1

                                                                      Sleep(4.0)
                                                                       for(X:AllPlayers):
                                                                        if(X.GetFortCharacter[].IsActive[]):
                                                                          if(Pla:= X.GetFortCharacter[]):
                                                                           Pla.ReleaseFromStasis()

                                                                       for(Y:Bars):
                                                                             Y.Disable()
                                                                  spawn:
                                                                     LavaGranter()
      if(Gamenum=30):

                                                                            Print("skybasebattle")

                                                                             var Changenum:int = 0

                                                                              Skybasebattles.GenerateStorm()
                                                                            if(Team1:= Teams[4]):
                                                                              if(CL:= Teams[7]):

                                                                               for(X:AllPlayers):
                                                                                if(X.GetFortCharacter[].IsActive[]):
                                                                                  BoxTimer.Start(X)
                                                                                   SkybaseMats.GrantItem(X)
                                                                                            if(Mess:= Messages[32]):
                                                                                               Mess.Show(X)


                                                                                            if(Changenum=0):
                                                                                              if(Team:= Teams[Changenum]):
                                                                                                Team.ChangeTeam(X)
                                                                                              if(set PlayerAliveTeam[X]=6):
                                                                                              if(set PlayerAliveTeamWin[X]=6):
                                                                                                      RedskybaseTeleport.Teleport(X)

                                                                                            if(Changenum=1):
                                                                                                      if(Team:= Teams[Changenum]):
                                                                                                           Team.ChangeTeam(X)
                                                                                                      BlueskybaseTeleport.Teleport(X)
                                                                                                      if(set PlayerAliveTeam[X]=7):
                                                                                                      if(set PlayerAliveTeamWin[X]=7):
                                                                                            if(Changenum=2):
                                                                                               if(Team:= Teams[Changenum]):
                                                                                                 Team.ChangeTeam(X)
                                                                                              GreenskybaseTeleport.Teleport(X)
                                                                                              if(set PlayerAliveTeam[X]=8):
                                                                                              if(set PlayerAliveTeamWin[X]=8):
                                                                                            if(Changenum=3):
                                                                                                  if(Team:= Teams[Changenum]):
                                                                                                           Team.ChangeTeam(X)
                                                                                                  PurpleskybaseTeleport.Teleport(X)
                                                                                                  if(set PlayerAliveTeam[X]=9):
                                                                                                  if(set PlayerAliveTeamWin[X]=9):
                                                                                        set Changenum+=1
                                                                                        if(Changenum = 4):
                                                                                               set Changenum = 0


                                                                                       CL.ChangeClass(X)


                                                                            Sleep(4.0)
                                                                                    for(X:AllPlayers):
                                                                                      if(X.GetFortCharacter[].IsActive[]):
                                                                                        if(Pla:= X.GetFortCharacter[]):
                                                                                             Pla.ReleaseFromStasis()
                                                                              for(Y:Bars):
                                                                                  Y.Disable()
                                                                              spawn:
                                                                                SkybaseLoop()

      if(Gamenum=31):


                                                                                    Print("Spooky FFA")

                                                                                           DisableSky.Trigger()
                                                                                           SpookyStorm.GenerateStorm()
                                                                                           SpookyCin.Play()
                                                                                           Trig5.Trigger()

                                                                                           TrigOrbit.Trigger()
                                                                                           if(Team1:= Teams[4]):

                                                                                            for(X:AllPlayers):
                                                                                             if(X.GetFortCharacter[].IsActive[]):
                                                                                               BoxTimer.Start(X)
                                                                                                 if(Mess:= Messages[33]):
                                                                                                       Mess.Show(X)
                                                                                                        SpookyGranter.GrantItem(X)


                                                                                                 if(Team:= Teams[num]):
                                                                                                     Team.ChangeTeam(X)

                                                                                                     Team1.ChangeClass(X)
                                                                                                 if(ZBTeles:= SpookyTeleporters[num]):
                                                                                                   ZBTeles.Teleport(X)
                                                                                                 if(Pla:= X.GetFortCharacter[]):
                                                                                                     Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                                                                set num +=1

                                                                                    Sleep(4.0)
                                                                                     for(X:AllPlayers):
                                                                                      if(X.GetFortCharacter[].IsActive[]):
                                                                                         if(Pla:= X.GetFortCharacter[]):
                                                                                              Pla.ReleaseFromStasis()

                                                                                         spawn:
                                                                                                PutElims(X)
      if(Gamenum=32):

                                                                                                  Print("OGZone")

                                                                                                   var Changenum:int = 0

                                                                                                    OGZone.GenerateStorm()
                                                                                                  if(Team1:= Teams[4]):
                                                                                                    if(CL:= Teams[7]):

                                                                                                     for(X:AllPlayers):
                                                                                                      if(X.GetFortCharacter[].IsActive[]):
                                                                                                        BoxTimer.Start(X)
                                                                                                          OGLoots.GrantItem(X)
                                                                                                                  if(Mess:= Messages[34]):
                                                                                                                     Mess.Show(X)


                                                                                                                  if(Changenum=0):
                                                                                                                    if(Team:= Teams[Changenum]):
                                                                                                                      Team.ChangeTeam(X)
                                                                                                                    if(set PlayerAliveTeam[X]=6):
                                                                                                                    if(set PlayerAliveTeamWin[X]=6):
                                                                                                                            RedOGTeleporter.Teleport(X)

                                                                                                                  if(Changenum=1):
                                                                                                                            if(Team:= Teams[Changenum]):
                                                                                                                                 Team.ChangeTeam(X)
                                                                                                                            BlueOGTeleporter.Teleport(X)
                                                                                                                            if(set PlayerAliveTeam[X]=7):
                                                                                                                            if(set PlayerAliveTeamWin[X]=7):
                                                                                                                  if(Changenum=2):
                                                                                                                     if(Team:= Teams[Changenum]):
                                                                                                                       Team.ChangeTeam(X)
                                                                                                                    GreenOGTeleporter.Teleport(X)
                                                                                                                    if(set PlayerAliveTeam[X]=8):
                                                                                                                    if(set PlayerAliveTeamWin[X]=8):
                                                                                                                  if(Changenum=3):
                                                                                                                        if(Team:= Teams[Changenum]):
                                                                                                                                 Team.ChangeTeam(X)
                                                                                                                        PurpleOGTeleporter.Teleport(X)
                                                                                                                        if(set PlayerAliveTeam[X]=9):
                                                                                                                        if(set PlayerAliveTeamWin[X]=9):
                                                                                                              set Changenum+=1
                                                                                                              if(Changenum = 4):
                                                                                                                     set Changenum = 0


                                                                                                             CL.ChangeClass(X)


                                                                                                  Sleep(4.0)
                                                                                                          for(X:AllPlayers):
                                                                                                            if(X.GetFortCharacter[].IsActive[]):
                                                                                                              if(Pla:= X.GetFortCharacter[]):
                                                                                                                   Pla.ReleaseFromStasis()
                                                                                                    for(Y:Bars):
                                                                                                        Y.Disable()
      if(Gamenum=33):


                                                                                                          BoxStorm.GenerateStorm()
                                                                                                                    Print("powerbox")

                                                                                                                for(X:AllPlayers):
                                                                                                                 if(X.GetFortCharacter[].IsActive[]):
                                                                                                                  TeleGranter2.GrantItem(X)
                                                                                                                  Damager.Pickup(X)
                                                                                                                     BoxTimer.Start(X)
                                                                                                                    if(Mess:= Messages[35]):
                                                                                                                       Mess.Show(X)

                                                                                                                    if(Team:= Teams[num]):
                                                                                                                        Team.ChangeTeam(X)
                                                                                                                    if(BoxTeles:= BoxTeleporters[num]):
                                                                                                                          BoxTeles.Teleport(X)
                                                                                                                    if(CL:= Teams[1]):
                                                                                                                          CL.ChangeClass(X)

                                                                                                                  set num +=1
                                                                                                           Sleep(7.0)
                                                                                                                for(Y:Bars):
                                                                                                                    Y.Disable()


                                                                                                         for(Y:AllPlayers):
                                                                                                          if(Y.GetFortCharacter[].IsActive[]):
                                                                                                            spawn:
                                                                                                             RealInvisloop1(Y)
      if(Gamenum=34):

                                                                                                              Print("DuosBox")

                                                                                                               var Changenum:int = 0

                                                                                                                BoxStorm.GenerateStorm()
                                                                                                              if(Team1:= Teams[4]):
                                                                                                               if(CL:= Teams[6]):

                                                                                                                 for(X:AllPlayers):
                                                                                                                  if(X.GetFortCharacter[].IsActive[]):
                                                                                                                    BoxTimer.Start(X)
                                                                                                                      NormGranter.GrantItem(X)
                                                                                                                              if(Mess:= Messages[36]):
                                                                                                                                 Mess.Show(X)


                                                                                                                              if(Changenum=0 or Changenum=2):
                                                                                                                                if(Team:= Teams[0]):
                                                                                                                                  Team.ChangeTeam(X)
                                                                                                                                if(set PlayerAliveTeam[X]=6):
                                                                                                                                if(set PlayerAliveTeamWin[X]=6):
                                                                                                                                  if(BoxTeles:= BoxTeleporters[0]):
                                                                                                                                    BoxTeles.Teleport(X)

                                                                                                                              if(Changenum=1 or Changenum=3):
                                                                                                                                        if(Team:= Teams[1]):
                                                                                                                                             Team.ChangeTeam(X)

                                                                                                                                        if(set PlayerAliveTeam[X]=7):
                                                                                                                                        if(set PlayerAliveTeamWin[X]=7):
                                                                                                                                          if(BoxTeles:= BoxTeleporters[1]):
                                                                                                                                            BoxTeles.Teleport(X)
                                                                                                                              if(Changenum=4 or Changenum=5):
                                                                                                                                 if(Team:= Teams[2]):
                                                                                                                                   Team.ChangeTeam(X)

                                                                                                                                if(set PlayerAliveTeam[X]=8):
                                                                                                                                if(set PlayerAliveTeamWin[X]=8):
                                                                                                                                  if(BoxTeles:= BoxTeleporters[2]):
                                                                                                                                    BoxTeles.Teleport(X)
                                                                                                                              if(Changenum=6 or Changenum=7):
                                                                                                                                    if(Team:= Teams[3]):
                                                                                                                                             Team.ChangeTeam(X)

                                                                                                                                    if(set PlayerAliveTeam[X]=9):
                                                                                                                                    if(set PlayerAliveTeamWin[X]=9):
                                                                                                                                      if(BoxTeles:= BoxTeleporters[3]):
                                                                                                                                        BoxTeles.Teleport(X)
                                                                                                                              if(Changenum=8 or Changenum=9):
                                                                                                                                        if(Team:= Teams[4]):
                                                                                                                                          Team.ChangeTeam(X)
                                                                                                                                        if(set PlayerAliveTeam[X]=10):
                                                                                                                                        if(set PlayerAliveTeamWin[X]=10):
                                                                                                                                          if(BoxTeles:= BoxTeleporters[4]):
                                                                                                                                            BoxTeles.Teleport(X)

                                                                                                                              if(Changenum=10 or Changenum=11):
                                                                                                                                              if(Team:= Teams[5]):
                                                                                                                                                     Team.ChangeTeam(X)

                                                                                                                                                if(set PlayerAliveTeam[X]=11):
                                                                                                                                                if(set PlayerAliveTeamWin[X]=11):
                                                                                                                                                  if(BoxTeles:= BoxTeleporters[5]):
                                                                                                                                                    BoxTeles.Teleport(X)
                                                                                                                              if(Changenum=12 or Changenum=13):
                                                                                                                                         if(Team:= Teams[6]):
                                                                                                                                           Team.ChangeTeam(X)

                                                                                                                                        if(set PlayerAliveTeam[X]=12):
                                                                                                                                        if(set PlayerAliveTeamWin[X]=12):
                                                                                                                                          if(BoxTeles:= BoxTeleporters[6]):
                                                                                                                                            BoxTeles.Teleport(X)
                                                                                                                              if(Changenum=14 or Changenum=15):
                                                                                                                                            if(Team:= Teams[7]):
                                                                                                                                                     Team.ChangeTeam(X)

                                                                                                                                            if(set PlayerAliveTeam[X]=13):
                                                                                                                                            if(set PlayerAliveTeamWin[X]=13):
                                                                                                                                              if(BoxTeles:= BoxTeleporters[7]):
                                                                                                                                                BoxTeles.Teleport(X)
                                                                                                                          set Changenum+=1
                                                                                                                          if(Changenum = 15):
                                                                                                                                 set Changenum = 0


                                                                                                                         CL.ChangeClass(X)


                                                                                                              Sleep(8.0)
                                                                                                                      for(X:AllPlayers):
                                                                                                                        if(X.GetFortCharacter[].IsActive[]):
                                                                                                                          if(Pla:= X.GetFortCharacter[]):
                                                                                                                               Pla.ReleaseFromStasis()
                                                                                                                for(Y:Bars):
                                                                                                                    Y.Disable()

      if(Gamenum=35):
               Print("knocker")
              KnockStorm.GenerateStorm()

             var countero:int = 0
                     for(X:AllPlayers):

                      if(X.GetFortCharacter[].IsActive[]):
                        Knockstarter.GrantItem(X)
                          if(Playu:= X.GetFortCharacter[]):
                           Set:= Playu.DamagedShieldEvent().Subscribe(Knockback)
                            if(set  PlayerCancels3[X]=Set):
                          if(set Knocknum[X]=0):
                          if(set Knocknummove[X]=countero):
                         BoxTimer.Start(X)
                          if(Mess:= Messages[37]):
                                 Mess.Show(X)
                          if(BoxTeles:= KnockTeleporters[0]):
                               BoxTeles.Teleport(X)

                          if(set PlayerAlive[X]= countero):
                          if(Team:= Teams[num]):
                                        Team.ChangeTeam(X)
                          if(CL:= Teams[8]):
                                     CL.ChangeClass(X)

                        set num +=1
                        set countero+=1
                  Sleep(4.0)
                   for(Y:Bars):
                     Y.Disable()
                   for(X:AllPlayers):
                      if(X.GetFortCharacter[].IsActive[]):

                        spawn:
                          PutElims(X)

         spawn:
           KnockLoop()

      if(Gamenum=36):

            Print("8v8 piece")

           var Changenum:int = 0

            PieceStorm.GenerateStorm()
          if(Team1:= Teams[4]):
           if(CL:= Teams[5]):

             for(X:AllPlayers):
              if(X.GetFortCharacter[].IsActive[]):
                BoxTimer.Start(X)
                  NormGranter.GrantItem(X)
                          if(Mess:= Messages[38]):
                             Mess.Show(X)


                          if(Changenum=0):
                            if(set PlayerAliveTeam[X]=6):
                            if(set PlayerAliveTeamWin[X]=6):
                                    RedPieceTeleport.Teleport(X)

                          if(Changenum=1):
                                    BluePieceTeleport.Teleport(X)
                                    if(set PlayerAliveTeam[X]=7):
                                    if(set PlayerAliveTeamWin[X]=7):

                     CL.ChangeClass(X)
                   if(Changenum=0):
                      set Changenum = 1
                       if(Team:= Teams[0]):
                              Team.ChangeTeam(X)
                   else:
                      if(Team:= Teams[1]):
                        Team.ChangeTeam(X)
                      set Changenum = 0


          Sleep(8.0)


            for(Y:Bars):
                Y.Disable()
      if(Gamenum=37):
                  Print("newseasonloot")
                  BoxStorm.GenerateStorm()


                  for(X:AllPlayers):
                   if(X.GetFortCharacter[].IsActive[]):
                    BoxTimer.Start(X)
                    if(Mess:= Messages[39]):
                      Mess.Show(X)
                    if(BoxTeles:= BoxTeleporters[num]):
                      BoxTeles.Teleport(X)
                    Ran:= GetRandomInt(0,2)
                          if(Gr:= NewGranter[Ran]):
                             Gr.GrantItem(X)
                    if(Team:= Teams[num]):
                       Team.ChangeTeam(X)
                    if(CL:= Teams[6]):
                       CL.ChangeClass(X)

                   set num +=1

             Sleep(8.0)
              for(Y:Bars):
                Y.Disable()
      if(Gamenum=38):


                  Print("200pump")
                         BigBoxSpawn.Play()
                         BigBoxStorm.GenerateStorm()
                         if(Team1:= Teams[14]):

                          for(X:AllPlayers):
                           if(X.GetFortCharacter[].IsActive[]):
                            if(Playu:= X.GetFortCharacter[]):
                              Set:= Playu.DamagedShieldEvent().Subscribe(Knockback2)

                             BoxTimer.Start(X)
                               if(Mess:= Messages[40]):
                                     Mess.Show(X)
                                      OnePumpGranter.GrantItem(X)


                               if(Team:= Teams[num]):
                                   Team.ChangeTeam(X)

                                   Team1.ChangeClass(X)
                               if(ZBTeles:= BigBoxTeleporters[num]):
                                 ZBTeles.Teleport(X)

                              set num +=1
                    for(X:AllPlayers):

                       spawn:
                              PutElims(X)
              Sleep(3.0)
                              for(Y:Bars):
                                Y.Disable()
      if(Gamenum=39):


                 Print("aimbotffa")
                                    BigBoxSpawn.Play()
                                       BigBoxStorm.GenerateStorm()
                                       if(Team1:= Teams[4]):

                                        TriggerAim.Enable()
                                        for(X:AllPlayers):

                                         if(X.GetFortCharacter[].IsActive[]):

                                          TriggerAim.Register(X)
                                           BoxTimer.Start(X)
                                             if(Mess:= Messages[41]):
                                                   Mess.Show(X)
                                                    AimbotGranter.GrantItem(X)


                                             if(Team:= Teams[num]):
                                                 Team.ChangeTeam(X)

                                                 Team1.ChangeClass(X)
                                             if(ZBTeles:= BigBoxTeleporters[num]):
                                               ZBTeles.Teleport(X)

                                            set num +=1


                                 for(X:AllPlayers):


                                     spawn:
                                            PutElims(X)
                       Sleep(3.0)
                                    for(Y:Bars):
                                       Y.Disable()
      if(Gamenum=40):


                               Print("grindoneshot")

                                                                 set RealGGranter=GG3Granter
                                                                     for(Y:=0..RealGGranter.Length-1):

                                                                         Randy:= GetRandomInt(0,RealGGranter.Length-1)
                                                                            if(Numy:= RealGGranter[Randy]):
                                                                              if (NewArray := RealGGranter.RemoveElement[Randy]):
                                                                                  set RealGGranter= NewArray
                                                                                     set RealG2Granter += array{Numy}
                                                                   GrindStorm.GenerateStorm()
                                                                   GrindSpawn.Play()
                                                                    if(Team1:= Teams[2]):


                                                                     for(X:AllPlayers):

                                                                      if(X.GetFortCharacter[].IsActive[]):

                                                                       if(Gun:= RealG2Granter[0]):
                                                                        BoxTimer.Start(X)
                                                                         Gun.GrantItem(X)
                                                                          if(Mess:= Messages[42]):
                                                                                Mess.Show(X)


                                                                          if(Team:= Teams[num]):
                                                                              Team.ChangeTeam(X)

                                                                              Team1.ChangeClass(X)
                                                                          if(ZBTeles:= GrindTeleporters[num]):
                                                                            ZBTeles.Teleport(X)
                                                                          if(Pla:= X.GetFortCharacter[]):
                                                                              Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                                         set num +=1

                                                             Sleep(4.0)
                                                              for(X:AllPlayers):
                                                               if(X.GetFortCharacter[].IsActive[]):
                                                                  if(Pla:= X.GetFortCharacter[]):
                                                                       Pla.ReleaseFromStasis()

                                                                  spawn:
                                                                         PutElims(X)

      if(Gamenum=41):

                                                                          Print("infected")

                                                                         var Changenum:int = 0
                                                                         InfectedSpawn.Play()
                                                                          InfectedStorm.GenerateStorm()
                                                                          SniperTimer.Start()
                                                                     if(Team1:= Teams[0]):
                                                                      if(Team2:= Teams[1]):

                                                                           for(X:AllPlayers):
                                                                            if(X.GetFortCharacter[].IsActive[]):
                                                                              BoxTimer.Start(X)


                                                                                InfectedTeleporter.Teleport(X)
                                                                                        if(Mess:= Messages[43]):
                                                                                           Mess.Show(X)


                                                                                        if(Changenum=0 or Changenum = 2 or Changenum = 8  ):
                                                                                          if(set PlayerAliveTeam[X]=6):

                                                                                                Infected.Pickup(X)
                                                                                                Infected1Granter.GrantItem(X)
                                                                                        else:

                                                                                                  if(set PlayerAliveTeam[X]=7):

                                                                                     if(Pla:= X.GetFortCharacter[]):
                                                                                             Pla.PutInStasis(stasis_args{AllowTurning:=false})
                                                                                  set Changenum +=1

                                                               Sleep(4.0)
                                                                                  for(X:AllPlayers):
                                                                                   if(X.GetFortCharacter[].IsActive[]):
                                                                                      if(Pla:= X.GetFortCharacter[]):
                                                                                           Pla.ReleaseFromStasis()


    Go(Gamenum)
      }


   Go(Playa:int):void={
    AllPlayers:=GetPlayspace().GetPlayers()
      for(X:AllPlayers):

         spawn:
           PutCanvasEveryone(Playa+1,X,0)
   }
   TextForMyUI<localizes> : message = "Vote"
   TextForMyUI2<localizes> : message = "Exit"
   TextForMyUI3<localizes> : message = "Go To Pit"
    UIText1<localizes>(Value:string):message=
      "{Value}"
    UIText10<localizes>(Value:string):message=
        "{Value}/35"
    UIText5<localizes>(Value1:string,Value2:string ):message=
        "{Value1}.{Value2}"
    HandleSelectedUIButton5(Playa:widget_message):void={
      Plu:= Playa.Player
       if(Age:= agent[Plu]):
        if(Age2:= Age.GetFortCharacter[]):
           if(Nu:=PlayerCan5[Plu]):

             if(PlayerUI:= GetPlayerUI[Plu], FortCharacte:= Plu.GetFortCharacter[]):
                   if(Can:= PlayerCan5[Plu]):
                     Print("widgRemoved")
                            PlayerUI.RemoveWidget(Can)
      }
    HandleSelectedUIButton2(Playa:widget_message):void={
        Plu:= Playa.Player
          if(set PlayerChoice[Plu]=0):

        }
    HandleSelectedUIButton3(Playa:widget_message):void={
          Plu:= Playa.Player
            if(set PlayerChoice[Plu]=1):

          }
    HandleSelectedUIButton4(Playa:widget_message):void={
            Plu:= Playa.Player
              if(set PlayerChoice[Plu]=2):

            }
    TeleToCar(Playa:player, Numer:int )<suspends>:void={

         Sleep(5.0)
          if(Numer=6):
           if(Playa.GetFortCharacter[].IsActive[]):
            RedCornTeleport.Teleport(Playa)
            RedChecksCorn.Register(Playa)
          else:
            if(Playa.GetFortCharacter[].IsActive[]):
              BlueCornTeleport.Teleport(Playa)
               BlueChecksCorn.Register(Playa)
        }
    PlayersAliveCheck()<suspends>:void={
       Print("playaalivecheck")

      var count:int = 0
      var playa:[]player = array{}
      Sleep(0.1)
        AllPlayers:=GetPlayspace().GetPlayers()
            for(X:AllPlayers):
              if(Nu:= PlayerAlive[X]):
                set count +=Nu
                   if(Nu=1):
                    set playa= array{X}
          if(count = 1 and GameNumber >0):

              for(Y:playa):
                Playerfinish(Y,1)
          if(count <= 0):
              if(Playery:= AllPlayers[0]):
                 Playerfinish(Playery,39)


    }
    Playerfinish2(Agent:agent):void =
      {

           Playerfinish(Agent,7)
      }
    Playerfinish3(Agent:?agent):void =
        {
          AllPlayers:=GetPlayspace().GetPlayers()
            if(Age:= AllPlayers[0]):
              Playerfinish(Age,6)
        }
    Playerfinishdraw(Agent:?agent):void =
          {
            AllPlayers:=GetPlayspace().GetPlayers()
                 for(Y:AllPlayers):
                   if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                        if(Can:= PlayerCan10[Y]):
                            PlayerUI.RemoveWidget(Can)
                        if(Can:= PlayerCan11[Y]):
                               PlayerUI.RemoveWidget(Can)
                        if(Can:= PlayerCan12[Y]):
                            PlayerUI.RemoveWidget(Can)
                        if(Can:= PlayerCan5[Y]):
                              PlayerUI.RemoveWidget(Can)
                        if(Can:= PlayerCan13[Y]):
                            PlayerUI.RemoveWidget(Can)
                        if(Can:= PlayerCan15[Y]):
              if(Age:= AllPlayers[0]):
                Playerfinish(Age,10)
          }
    Playerfinish(Agent:agent, Number:int):void =
      {
         Print("playerfinny")

        if(EndCheck=0):
          set EndCheck= 1
         AllPlayers:=GetPlayspace().GetPlayers()
         var Check:int = 0
             for(Y:AllPlayers):
                 set Check = 0

              if(Pla:= Y.GetFortCharacter[]):

              if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
                if(Can:= PlayerCan10[Y]):
                  PlayerUI.RemoveWidget(Can)
                if(Can:= PlayerCan11[Y]):
                    PlayerUI.RemoveWidget(Can)
                if(Can:= PlayerCan12[Y]):
                   PlayerUI.RemoveWidget(Can)
                if(Can:= PlayerCan5[Y]):
                     PlayerUI.RemoveWidget(Can)
                if(Can:= PlayerCan13[Y]):
                       PlayerUI.RemoveWidget(Can)
                if(Can:= PlayerCan15[Y]):
                         PlayerUI.RemoveWidget(Can)


               if(Number = 1):
                if(Pl:= player[Agent]):
                  if(Pl=Y):
                     VictoryMessage.Show(Y)

                    if(Stubs:= PlayerStatsMap[Y]):
                      Arry:= Stubs.GamesWon
                       for(V:Arry):
                         if(V=GameNumber):
                          set Check = 1
                      if(Check=0):
                         Arry2:= Stubs.GamesWon + array{GameNumber}
                           Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                              if(set PlayerStatsMap[Y]= Stut ):
                      Print("{Stubs.Elims}")
                        Print("{Stubs.Wins}")

                  else:
                     DefeatMessage.Show(Y)
               if(Number = 6):
                 if(Nu:= PlayerAliveTeamWin[Y]):
                    if(Nu=6):
                      VictoryMessage.Show(Y)

                     if(Stubs:= PlayerStatsMap[Y]):
                      Arry:= Stubs.GamesWon
                       for(V:Arry):
                         if(V=GameNumber):
                          set Check = 1
                      if(Check=0):
                         Arry2:= Stubs.GamesWon + array{GameNumber}
                           Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                              if(set PlayerStatsMap[Y]= Stut ):
                         Print("{Stubs.Elims}")
                         Print("{Stubs.Wins}")
                    else:
                       DefeatMessage.Show(Y)
               if(Number = 7):
                        if(Nu:= PlayerAliveTeamWin[Y]):
                           if(Nu=7):
                             VictoryMessage.Show(Y)

                                 if(Stubs:= PlayerStatsMap[Y]):
                                    Arry:= Stubs.GamesWon
                                      for(V:Arry):
                                         if(V=GameNumber):
                                               set Check = 1
                                         if(Check=0):
                                             Arry2:= Stubs.GamesWon + array{GameNumber}
                                                Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                    if(set PlayerStatsMap[Y]= Stut ):
                                                     Print("{Stubs.Elims}")
                                                             Print("{Stubs.Wins}")
                           else:
                              DefeatMessage.Show(Y)
               if(Number = 8):
                             if(Nu:= PlayerAliveTeamWin[Y]):
                                   if(Nu=8):
                                     VictoryMessage.Show(Y)
                                     if(Stubs:= PlayerStatsMap[Y]):
                                         Arry:= Stubs.GamesWon
                                          for(V:Arry):
                                            if(V=GameNumber):
                                             set Check = 1
                                         if(Check=0):
                                            Arry2:= Stubs.GamesWon + array{GameNumber}
                                              Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                 if(set PlayerStatsMap[Y]= Stut ):
                                         Print("{Stubs.Elims}")
                                           Print("{Stubs.Wins}")

                                   else:
                                      DefeatMessage.Show(Y)
               if(Number = 9):
                               if(Nu:= PlayerAliveTeamWin[Y]):
                                    if(Nu=9):
                                             VictoryMessage.Show(Y)
                                             if(Stubs:= PlayerStatsMap[Y]):
                                                 Arry:= Stubs.GamesWon
                                                  for(V:Arry):
                                                    if(V=GameNumber):
                                                     set Check = 1
                                                 if(Check=0):
                                                    Arry2:= Stubs.GamesWon + array{GameNumber}
                                                      Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                         if(set PlayerStatsMap[Y]= Stut ):
                                                 Print("{Stubs.Elims}")
                                                   Print("{Stubs.Wins}")

                                    else:
                                              DefeatMessage.Show(Y)
               if(Number = 10):
                  if(Nu:= PlayerAliveTeamWin[Y]):
                                 if(Nu=10):
                                                              VictoryMessage.Show(Y)
                                                              if(Stubs:= PlayerStatsMap[Y]):
                                                                  Arry:= Stubs.GamesWon
                                                                   for(V:Arry):
                                                                     if(V=GameNumber):
                                                                      set Check = 1
                                                                  if(Check=0):
                                                                     Arry2:= Stubs.GamesWon + array{GameNumber}
                                                                       Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                                          if(set PlayerStatsMap[Y]= Stut ):
                                                                  Print("{Stubs.Elims}")
                                                                    Print("{Stubs.Wins}")

                                 else:
                                                               DrawMessage.Show(Y)
               if(Number = 11):
                              if(Nu:= PlayerAliveTeamWin[Y]):
                                      if(Nu=11):
                                           VictoryMessage.Show(Y)
                                           if(Stubs:= PlayerStatsMap[Y]):
                                               Arry:= Stubs.GamesWon
                                                for(V:Arry):
                                                  if(V=GameNumber):
                                                   set Check = 1
                                               if(Check=0):
                                                  Arry2:= Stubs.GamesWon + array{GameNumber}
                                                    Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                       if(set PlayerStatsMap[Y]= Stut ):
                                               Print("{Stubs.Elims}")
                                                 Print("{Stubs.Wins}")

                                      else:
                                            DefeatMessage.Show(Y)
               if(Number = 12):
                                              if(Nu:= PlayerAliveTeamWin[Y]):
                                                      if(Nu=12):
                                                           VictoryMessage.Show(Y)
                                                           if(Stubs:= PlayerStatsMap[Y]):
                                                               Arry:= Stubs.GamesWon
                                                                for(V:Arry):
                                                                  if(V=GameNumber):
                                                                   set Check = 1
                                                               if(Check=0):
                                                                  Arry2:= Stubs.GamesWon + array{GameNumber}
                                                                    Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                                       if(set PlayerStatsMap[Y]= Stut ):
                                                               Print("{Stubs.Elims}")
                                                                 Print("{Stubs.Wins}")

                                                      else:
                                                            DefeatMessage.Show(Y)
               if(Number = 13):
                                    if(Nu:= PlayerAliveTeamWin[Y]):
                                                    if(Nu=13):
                                                             VictoryMessage.Show(Y)
                                                             if(Stubs:= PlayerStatsMap[Y]):
                                                                 Arry:= Stubs.GamesWon
                                                                  for(V:Arry):
                                                                    if(V=GameNumber):
                                                                     set Check = 1
                                                                 if(Check=0):
                                                                    Arry2:= Stubs.GamesWon + array{GameNumber}
                                                                      Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                                         if(set PlayerStatsMap[Y]= Stut ):
                                                                 Print("{Stubs.Elims}")
                                                                   Print("{Stubs.Wins}")

                                                    else:
                                                             DefeatMessage.Show(Y)
               if(Number = 14):
                                                              if(Nu:= PlayerAliveTeamWin[Y]):
                                                                      if(Nu=14):
                                                                           VictoryMessage.Show(Y)
                                                                           if(Stubs:= PlayerStatsMap[Y]):
                                                                               Arry:= Stubs.GamesWon
                                                                                for(V:Arry):
                                                                                  if(V=GameNumber):
                                                                                   set Check = 1
                                                                               if(Check=0):
                                                                                  Arry2:= Stubs.GamesWon + array{GameNumber}
                                                                                    Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                                                       if(set PlayerStatsMap[Y]= Stut ):
                                                                               Print("{Stubs.Elims}")
                                                                                 Print("{Stubs.Wins}")

                                                                      else:
                                                                            DefeatMessage.Show(Y)
               if(Number = 39):
                                                                      if(Nu:= PlayerAlive[Y]):
                                                                                if(Nu=1):
                                                                                           VictoryMessage.Show(Y)
                                                                                           if(Stubs:= PlayerStatsMap[Y]):
                                                                                               Arry:= Stubs.GamesWon
                                                                                                for(V:Arry):
                                                                                                  if(V=GameNumber):
                                                                                                   set Check = 1
                                                                                               if(Check=0):
                                                                                                  Arry2:= Stubs.GamesWon + array{GameNumber}
                                                                                                    Stut:= Update_Player_Stats(Stubs.Version, Stubs.Elims, Stubs.Wins+1, Arry2)
                                                                                                       if(set PlayerStatsMap[Y]= Stut ):
                                                                                               Print("{Stubs.Elims}")
                                                                                                 Print("{Stubs.Wins}")

                                                                                else:
                                                                                            DefeatMessage.Show(Y)

         spawn:
          EndandWipe()
      }

    PutElims(X:player)<suspends>:void =
     {


           TextWidget:text_block= text_block{DefaultTextColor:=NamedColors.White}
           TextWidget1:text_block= text_block{DefaultTextColor:=NamedColors.White}

           Canvas12:canvas = canvas:


            Slots := array:
             canvas_slot:
              Anchors := anchors{Minimum := vector2{X := 0.28, Y := 0.79}, Maximum := vector2{X := 0.28, Y := 0.79}}
              Offsets := margin{Top := 110.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
              Alignment := vector2{X := 0.5, Y := 0.5}
              Widget:=overlay:
               Slots := array:
                overlay_slot:

                 HorizontalAlignment := horizontal_alignment.Center
                  Widget := TextWidget
                  Padding := margin{Top := 0.0, Left := 0.0}

                overlay_slot:

                      HorizontalAlignment := horizontal_alignment.Center
                        Widget := TextWidget1
                        Padding := margin{Top := 50.0, Left := 0.0}
           Canvas21:canvas = canvas:


                          Slots := array:
                           canvas_slot:
                            Anchors := anchors{Minimum := vector2{X := 0.32, Y := 0.79}, Maximum := vector2{X := 0.32, Y := 0.79}}
                            Offsets := margin{Top := 110.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                            Alignment := vector2{X := 0.5, Y := 0.5}
                            Widget:=overlay:
                             Slots := array:
                              overlay_slot:

                               HorizontalAlignment := horizontal_alignment.Center
                                Widget := TextWidget
                                Padding := margin{Top := 0.0, Left := 0.0}
           if(PlayerUI:= GetPlayerUI[X], FortCharacte:= X.GetFortCharacter[]):
                        if(GameNumber=35):
                          PlayerUI.AddWidget(Canvas21)
                          if(set PlayerCan12[X]= Canvas21):
                        else:
                          Print("addedmainwidg22222")
                         PlayerUI.AddWidget(Canvas12)
                          if(set PlayerCan12[X]= Canvas12):


                      spawn:
                         FortCharacte.UpdateElims(TextWidget, X,TextWidget1)
     }
    (FortCharacter:fort_character).UpdateElims(TextBlock:text_block, Playa: player,TextBlock1:text_block)<suspends>:void=
      {

        loop:
             if(Breaknum = 1):
                break
           set Nummy1=0
           set Nummy2=0
           set Nummy3=0
          set NummyKnock=0
           AllPlayers:=GetPlayspace().GetPlayers()
                                     if(Num:= Knocknum[Playa]):
                                             set NummyKnock=Num
                                     if(Num:= PlayerGGElims[Playa]):
                                       set Nummy1=Num
                                    for(X:AllPlayers):
                                         if(Nu:= PlayerGGElims[X]) :
                                            if(Nu>Nummy2):
                                                   set Nummy2 = Nu


                              if(GameNumber = 35):
                                TextBlock.SetText(UIText1("{NummyKnock}%"))
                              else:

                               TextBlock.SetText(UIText1("🎯{Nummy1}"))
                               TextBlock1.SetText(UIText1("👑{Nummy2}"))

              Sleep(1.0)
               set Nummy1=0
               set Nummy2=0


      }
      PutRedvsBlue(X:player, Into:int)<suspends>:void =
        {

             Bar1:texture = text.TeamRedy
             BarSlot1 := texture_block{
             DefaultImage := Bar1,
             DefaultDesiredSize := vector2{X:=300.0, Y:=120.0}}
             Bar2:texture = text.TeamBlue
             BarSlot2 := texture_block{
             DefaultImage := Bar2,
             DefaultDesiredSize := vector2{X:=300.0, Y:=120.0}}
              TextWidget:text_block= text_block{DefaultTextColor:=NamedColors.White}
              TextWidget1:text_block= text_block{DefaultTextColor:=NamedColors.White}

            var Texty1:texture_block = BarSlot1
                  if(Into=6):
                    set Texty1= BarSlot1
                  if(Into=7):
                      set Texty1= BarSlot2
              Canvas15:canvas = canvas:


               Slots := array:
                canvas_slot:
                 Anchors := anchors{Minimum := vector2{X := 0.28, Y := 0.79}, Maximum := vector2{X := 0.28, Y := 0.79}}
                 Offsets := margin{Top := 110.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                 Alignment := vector2{X := 0.5, Y := 0.5}
                 Widget:=overlay:
                  Slots := array:
                   overlay_slot:

                    HorizontalAlignment := horizontal_alignment.Center
                     Widget := TextWidget
                     Padding := margin{Top := 0.0, Left := 100.0}

                   overlay_slot:

                         HorizontalAlignment := horizontal_alignment.Center
                           Widget := TextWidget1
                           Padding := margin{Top := 50.0, Left := 100.0}
                   overlay_slot:

                            HorizontalAlignment := horizontal_alignment.Center
                              Widget := Texty1
                              Padding := margin{Top := -550.0, Left := -400.0}
              if(PlayerUI:= GetPlayerUI[X], FortCharacte:= X.GetFortCharacter[]):
                             Print("addedmainwidg22222")
                           PlayerUI.AddWidget(Canvas15)
                             if(set PlayerCan15[X]= Canvas15):

                         spawn:
                            FortCharacte.UpdateTeamScore(TextWidget, X,TextWidget1)
        }
       (FortCharacter:fort_character).UpdateTeamScore(TextBlock:text_block, Playa: player,TextBlock1:text_block)<suspends>:void=
         {

           loop:
                if(Breaknum = 1):
                  break
              set Nummy1=0
              set Nummy2=0
              set Nummy3=0


                                if(GameNumber = 23)     :
                                  TextBlock.SetText(UIText1("🔵Elims:{TeamRednum}"))
                                  TextBlock1.SetText(UIText1("🔴Elims:{TeamBluenum}"))
                                if(GameNumber = 24)     :
                                    TextBlock.SetText(UIText1("🔴Captures:{TeamBluenumFlag}"))
                                    TextBlock1.SetText(UIText1("🔵Captures:{TeamRednumFlag}"))
                                if(GameNumber = 26)     :
                                      TextBlock.SetText(UIText1("🔵Points:{TeamBluenumCorn}"))
                                      TextBlock1.SetText(UIText1("🔴Points:{TeamRednumCorn}"))
                 Sleep(1.0)
                  set Nummy1=0
                  set Nummy2=0


         }
  PutDraw()<suspends>:void =
     {
       var jT:int = 150
         loop:
          Sleep(1.0)
           set jT-=1

           if(Breaknum=1):
            break
           if(jT=0):
            UpcomingDraw.Show()
      }
  PutCanvas(Game:[]int)<suspends>:void =
  {
   AllPlayers:=GetPlayspace().GetPlayers()
   for(X:AllPlayers):
    if(X.GetFortCharacter[].IsActive[]) :
     var XL:float = 560.0
     var YL:float = 250.0
     TextWidget:text_block= text_block{DefaultTextColor:=NamedColors.White}
     TextWidget1:text_block= text_block{DefaultTextColor:=NamedColors.White}
     TextWidget2:text_block= text_block{DefaultTextColor:=NamedColors.White}
      Bar1:texture = text.oney
      BarSlot1 := texture_block{
      DefaultImage := Bar1,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar2:texture = text.two
      BarSlot2 := texture_block{
      DefaultImage := Bar2,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar3:texture = text.Threee
      BarSlot3 := texture_block{
      DefaultImage := Bar3,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar4:texture = text.four
      BarSlot4 := texture_block{
      DefaultImage := Bar4,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar5:texture = text.fiveyyy
      BarSlot5 := texture_block{
      DefaultImage := Bar5,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar6:texture = text.six
      BarSlot6 := texture_block{
      DefaultImage := Bar6,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar7:texture = text.seven
      BarSlot7 := texture_block{
      DefaultImage := Bar7,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar8:texture = text.eight
      BarSlot8 := texture_block{
      DefaultImage := Bar8,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar9:texture = text.nine
      BarSlot9 := texture_block{
      DefaultImage := Bar9,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar10:texture = text.ten
      BarSlot10 := texture_block{
      DefaultImage := Bar10,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar11:texture = text.eleven
      BarSlot11 := texture_block{
      DefaultImage := Bar11,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar12:texture = text.twelve
      BarSlot12 := texture_block{
      DefaultImage := Bar12,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar13:texture = text.thirteen

      BarSlot13 := texture_block{
      DefaultImage := Bar13,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar14:texture = text.fourteenyy
      BarSlot14 := texture_block{
      DefaultImage := Bar14,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar15:texture = text.fifteene
      BarSlot15 := texture_block{
      DefaultImage := Bar15,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar16:texture = text.sixteenyyyyy
      BarSlot16 := texture_block{
      DefaultImage := Bar16,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar17:texture = text.seventeenyy
      BarSlot17 := texture_block{
      DefaultImage := Bar17,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar18:texture = text.eighteenyy
      BarSlot18 := texture_block{
      DefaultImage := Bar18,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar19:texture = text.nineteen
      BarSlot19 := texture_block{
      DefaultImage := Bar19,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar20:texture = text.twenty
      BarSlot20 := texture_block{
      DefaultImage := Bar20,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar21:texture = text.twentyonee
      BarSlot21 := texture_block{
      DefaultImage := Bar21,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar22:texture = text.TWENTYTWO
      BarSlot22 := texture_block{
      DefaultImage := Bar22,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar23:texture = text.twentythreey
      BarSlot23 := texture_block{
      DefaultImage := Bar23,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar24:texture = text.backgroundyyyyy
      BarSlot24 := texture_block{
      DefaultImage := Bar24,
      DefaultDesiredSize := vector2{X:=500.0, Y:=500.0}}
      Bar25:texture = text.backgroundyyyyy
      BarSlot25 := texture_block{
      DefaultImage := Bar25,
      DefaultDesiredSize := vector2{X:=500.0, Y:=500.0}}
      Bar26:texture = text.backgroundyyyyy
      BarSlot26 := texture_block{
      DefaultImage := Bar26,
      DefaultDesiredSize := vector2{X:=500.0, Y:=500.0}}
      Bar27:texture = text.twentyfour
      BarSlot27 := texture_block{
      DefaultImage := Bar27,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar28:texture = text.twentyfive
      BarSlot28 := texture_block{
      DefaultImage := Bar28,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar29:texture = text.backgroundyyyyy
      BarSlot29 := texture_block{
      DefaultImage := Bar29,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar30:texture = text.twentysixyyyy
      BarSlot30 := texture_block{
      DefaultImage := Bar30,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar31:texture = text.twentyseven
      BarSlot31 := texture_block{
      DefaultImage := Bar31,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar32:texture = text.twentyeight
      BarSlot32 := texture_block{
      DefaultImage := Bar32,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar33:texture = text.twentynine
      BarSlot33 := texture_block{
      DefaultImage := Bar33,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar34:texture = text.thirty
      BarSlot34 := texture_block{
      DefaultImage := Bar34,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar35:texture = text.thirtyoneyy
      BarSlot35 := texture_block{
      DefaultImage := Bar35,
      DefaultDesiredSize := vector2{X:=530.0, Y:=235.0}}
      Bar36:texture = text.thirtytwoyy
      BarSlot36 := texture_block{
      DefaultImage := Bar36,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar37:texture = text.thirtythree
      BarSlot37 := texture_block{
      DefaultImage := Bar37,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar38:texture = text.thirtyfour
      BarSlot38 := texture_block{
      DefaultImage := Bar38,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar39:texture = text.thirtyfive
      BarSlot39 := texture_block{
      DefaultImage := Bar39,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar40:texture = text.thirtysix
      BarSlot40 := texture_block{
      DefaultImage := Bar40,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar41:texture = text.thirtyseveny
      BarSlot41 := texture_block{
      DefaultImage := Bar41,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar42:texture = text.thirtyeight
      BarSlot42 := texture_block{
      DefaultImage := Bar42,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar43:texture = text.thirtynineyyyy
      BarSlot43 := texture_block{
      DefaultImage := Bar43,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar44:texture = text.fourty
      BarSlot44 := texture_block{
      DefaultImage := Bar44,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar45:texture = text.fourtyoneyyy
      BarSlot45 := texture_block{
      DefaultImage := Bar45,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      Bar46:texture = text.footytwo
      BarSlot46 := texture_block{
      DefaultImage := Bar46,
      DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
      var Texty:texture_block = BarSlot1
      var Texty1:texture_block = BarSlot1
      var Texty2:texture_block = BarSlot1
                var upnum:int = 0
                 for(Num1:Game, Num:= Num1+1):
                       Print("{Num} number")
                      if(Num = 1):
                            if(upnum = 0 ):
                              set Texty = BarSlot1
                            if(upnum = 1):
                                set Texty1 = BarSlot1
                            if(upnum = 2 ):
                                  set Texty2 = BarSlot1

                      if(Num = 2):
                        if(upnum = 0 ):
                          set Texty = BarSlot2
                        if(upnum = 1):
                            set Texty1 = BarSlot2
                        if(upnum = 2 ):
                              set Texty2 = BarSlot2

                      if(Num = 3):
                        if(upnum = 0 ):
                          set Texty = BarSlot3
                        if(upnum = 1):
                            set Texty1 = BarSlot3
                        if(upnum = 2 ):
                              set Texty2 = BarSlot3

                      if(Num = 4):
                        if(upnum = 0 ):
                          set Texty = BarSlot4
                        if(upnum = 1):
                            set Texty1 = BarSlot4
                        if(upnum = 2 ):
                              set Texty2 = BarSlot4

                      if(Num = 5):
                        if(upnum = 0 ):
                          set Texty = BarSlot5
                        if(upnum = 1):
                            set Texty1 = BarSlot5
                        if(upnum = 2 ):
                              set Texty2 = BarSlot5

                      if(Num = 6):
                        if(upnum = 0 ):
                          set Texty = BarSlot6
                        if(upnum = 1):
                            set Texty1 = BarSlot6
                        if(upnum = 2 ):
                              set Texty2 = BarSlot6

                      if(Num = 7):
                        if(upnum = 0 ):
                          set Texty = BarSlot7
                        if(upnum = 1):
                            set Texty1 = BarSlot7
                        if(upnum = 2 ):
                              set Texty2 = BarSlot7

                      if(Num = 8):
                        if(upnum = 0 ):
                          set Texty = BarSlot8
                        if(upnum = 1):
                            set Texty1 = BarSlot8
                        if(upnum = 2 ):
                              set Texty2 = BarSlot8

                      if(Num = 9):
                        if(upnum = 0 ):
                          set Texty = BarSlot9
                        if(upnum = 1):
                            set Texty1 = BarSlot9
                        if(upnum = 2 ):
                              set Texty2 = BarSlot9

                      if(Num = 10):
                        if(upnum = 0 ):
                          set Texty = BarSlot10
                        if(upnum = 1):
                            set Texty1 = BarSlot10
                        if(upnum = 2 ):
                              set Texty2 = BarSlot10

                      if(Num = 11):
                        if(upnum = 0 ):
                          set Texty = BarSlot11
                        if(upnum = 1):
                            set Texty1 = BarSlot11
                        if(upnum = 2 ):
                              set Texty2 = BarSlot11

                      if(Num = 12):
                        if(upnum = 0 ):
                          set Texty = BarSlot12
                        if(upnum = 1):
                            set Texty1 = BarSlot12
                        if(upnum = 2 ):
                              set Texty2 = BarSlot12

                      if(Num =13):
                        if(upnum = 0 ):
                          set Texty = BarSlot13
                        if(upnum = 1):
                            set Texty1 = BarSlot13
                        if(upnum = 2 ):
                              set Texty2 = BarSlot13

                      if(Num = 14):
                        if(upnum = 0 ):
                          set Texty = BarSlot14
                        if(upnum = 1):
                            set Texty1 = BarSlot14
                        if(upnum = 2 ):
                              set Texty2 = BarSlot14

                      if(Num = 15):
                        if(upnum = 0 ):
                          set Texty = BarSlot15
                        if(upnum = 1):
                            set Texty1 = BarSlot15
                        if(upnum = 2 ):
                              set Texty2 = BarSlot15

                      if(Num = 16):
                        if(upnum = 0 ):
                          set Texty = BarSlot16
                        if(upnum = 1):
                            set Texty1 = BarSlot16
                        if(upnum = 2 ):
                              set Texty2 = BarSlot16

                      if(Num = 17):
                        if(upnum = 0 ):
                          set Texty = BarSlot17
                        if(upnum = 1):
                            set Texty1 = BarSlot17
                        if(upnum = 2 ):
                              set Texty2 = BarSlot17

                      if(Num = 18):
                        if(upnum = 0 ):
                          set Texty = BarSlot18
                        if(upnum = 1):
                            set Texty1 = BarSlot18
                        if(upnum = 2 ):
                              set Texty2 = BarSlot18

                      if(Num = 19):
                        if(upnum = 0 ):
                          set Texty = BarSlot19
                        if(upnum = 1):
                            set Texty1 = BarSlot19
                        if(upnum = 2 ):
                              set Texty2 = BarSlot19

                      if(Num = 20):
                        if(upnum = 0 ):
                          set Texty = BarSlot20
                        if(upnum = 1):
                            set Texty1 = BarSlot20
                        if(upnum = 2 ):
                              set Texty2 = BarSlot20

                      if(Num = 21):
                        if(upnum = 0 ):
                          set Texty = BarSlot21
                        if(upnum = 1):
                            set Texty1 = BarSlot21
                        if(upnum = 2 ):
                              set Texty2 = BarSlot21
                      if(Num = 22):
                                if(upnum = 0 ):
                                  set Texty = BarSlot22
                                if(upnum = 1):
                                    set Texty1 = BarSlot22
                                if(upnum = 2 ):
                                      set Texty2 = BarSlot22
                      if(Num = 23):
                                        if(upnum = 0 ):
                                          set Texty = BarSlot23
                                        if(upnum = 1):
                                            set Texty1 = BarSlot23
                                        if(upnum = 2 ):
                                              set Texty2 = BarSlot23
                      if(Num = 24):
                                                if(upnum = 0 ):
                                                  set Texty = BarSlot27
                                                if(upnum = 1):
                                                    set Texty1 = BarSlot27
                                                if(upnum = 2 ):
                                                      set Texty2 = BarSlot27
                      if(Num = 25):
                                                        if(upnum = 0 ):
                                                          set Texty = BarSlot28
                                                        if(upnum = 1):
                                                            set Texty1 = BarSlot28
                                                        if(upnum = 2 ):
                                                              set Texty2 = BarSlot28
                      if(Num = 26):
                                                                if(upnum = 0 ):
                                                                  set Texty = BarSlot30
                                                                if(upnum = 1):
                                                                    set Texty1 = BarSlot30
                                                                if(upnum = 2 ):
                                                                      set Texty2 = BarSlot30
                      if(Num = 27):
                                                                        if(upnum = 0 ):
                                                                          set Texty = BarSlot31
                                                                        if(upnum = 1):
                                                                            set Texty1 = BarSlot31
                                                                        if(upnum = 2 ):
                                                                              set Texty2 = BarSlot31
                      if(Num = 28):
                                                                                if(upnum = 0 ):
                                                                                  set Texty = BarSlot32
                                                                                if(upnum = 1):
                                                                                    set Texty1 = BarSlot32
                                                                                if(upnum = 2 ):
                                                                                      set Texty2 = BarSlot32
                      if(Num = 29):
                                                                                        if(upnum = 0 ):
                                                                                          set Texty = BarSlot33
                                                                                        if(upnum = 1):
                                                                                            set Texty1 = BarSlot33
                                                                                        if(upnum = 2 ):
                                                                                              set Texty2 = BarSlot33
                      if(Num = 30):
                                                                                                if(upnum = 0 ):
                                                                                                  set Texty = BarSlot34
                                                                                                if(upnum = 1):
                                                                                                    set Texty1 = BarSlot34
                                                                                                if(upnum = 2 ):
                                                                                                      set Texty2 = BarSlot34
                      if(Num = 31):
                                                                                                        if(upnum = 0 ):
                                                                                                          set Texty = BarSlot35
                                                                                                        if(upnum = 1):
                                                                                                            set Texty1 = BarSlot35
                                                                                                        if(upnum = 2 ):
                                                                                                              set Texty2 = BarSlot35
                      if(Num = 32):
                                                                                                                if(upnum = 0 ):
                                                                                                                  set Texty = BarSlot36
                                                                                                                if(upnum = 1):
                                                                                                                    set Texty1 = BarSlot36
                                                                                                                if(upnum = 2 ):
                                                                                                                      set Texty2 = BarSlot36
                      if(Num = 33):
                                                                                                                        if(upnum = 0 ):
                                                                                                                          set Texty = BarSlot37
                                                                                                                        if(upnum = 1):
                                                                                                                            set Texty1 = BarSlot37
                                                                                                                        if(upnum = 2 ):
                                                                                                                              set Texty2 = BarSlot37
                      if(Num = 34):
                                                                                                                                if(upnum = 0 ):
                                                                                                                                  set Texty = BarSlot38
                                                                                                                                if(upnum = 1):
                                                                                                                                    set Texty1 = BarSlot38
                                                                                                                                if(upnum = 2 ):
                                                                                                                                      set Texty2 = BarSlot38
                      if(Num = 35):
                                                                                                                                        if(upnum = 0 ):
                                                                                                                                          set Texty = BarSlot39
                                                                                                                                        if(upnum = 1):
                                                                                                                                            set Texty1 = BarSlot39
                                                                                                                                        if(upnum = 2 ):
                                                                                                                                              set Texty2 = BarSlot39
                      if(Num = 36):
                                                                                                                                                if(upnum = 0 ):
                                                                                                                                                  set Texty = BarSlot40
                                                                                                                                                if(upnum = 1):
                                                                                                                                                    set Texty1 = BarSlot40
                                                                                                                                                if(upnum = 2 ):
                                                                                                                                                      set Texty2 = BarSlot40
                      if(Num = 37):
                                                                                                                                                        if(upnum = 0 ):
                                                                                                                                                          set Texty = BarSlot41
                                                                                                                                                        if(upnum = 1):
                                                                                                                                                            set Texty1 = BarSlot41
                                                                                                                                                        if(upnum = 2 ):
                                                                                                                                                              set Texty2 = BarSlot41
                      if(Num = 38):
                                                                                                                                                                if(upnum = 0 ):
                                                                                                                                                                  set Texty = BarSlot42
                                                                                                                                                                if(upnum = 1):
                                                                                                                                                                    set Texty1 = BarSlot42
                                                                                                                                                                if(upnum = 2 ):
                                                                                                                                                                      set Texty2 = BarSlot42
                      if(Num = 39):
                                                if(upnum = 0 ):
                                                   set Texty = BarSlot43
                                                if(upnum = 1):
                                                    set Texty1 = BarSlot43
                                                if(upnum = 2 ):
                                                   set Texty2 = BarSlot43
                      if(Num = 40):
                                                    if(upnum = 0 ):
                                                      set Texty = BarSlot44
                                                    if(upnum = 1):
                                                        set Texty1 = BarSlot44
                                                    if(upnum = 2 ):
                                                          set Texty2 = BarSlot44
                      if(Num = 41):
                                                            if(upnum = 0 ):
                                                              set Texty = BarSlot45
                                                            if(upnum = 1):
                                                                set Texty1 = BarSlot45
                                                            if(upnum = 2 ):
                                                                  set Texty2 = BarSlot45
                      if(Num = 42):
                                                                    if(upnum = 0 ):
                                                                      set Texty = BarSlot46
                                                                    if(upnum = 1):
                                                                        set Texty1 = BarSlot46
                                                                    if(upnum = 2 ):
                                                                          set Texty2 = BarSlot46

                    set upnum +=1
        MyUIButton2 : button_loud = button_loud{DefaultText := TextForMyUI}
                    MyUIButton2.OnClick().Subscribe(HandleSelectedUIButton2)
          MyUIButton3 : button_loud = button_loud{DefaultText := TextForMyUI}
                   MyUIButton3.OnClick().Subscribe(HandleSelectedUIButton3)
           MyUIButton4 : button_loud = button_loud{DefaultText := TextForMyUI}
                   MyUIButton4.OnClick().Subscribe(HandleSelectedUIButton4)
             MyUIButton5 : button_regular = button_regular{DefaultText := TextForMyUI2}
                   MyUIButton5.OnClick().Subscribe(HandleSelectedUIButton5)

        Canvas9:canvas = canvas:


         Slots := array:
          canvas_slot:
           Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.4}, Maximum := vector2{X := 0.5, Y := 0.4}}
           Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
           Alignment := vector2{X := 0.5, Y := 0.5}
           Widget:=overlay:
            Slots := array:
             overlay_slot:

                HorizontalAlignment := horizontal_alignment.Center
                   Widget := BarSlot24
                     Padding := margin{Top := 100.0, Left := 550.0}
             overlay_slot:

                      HorizontalAlignment := horizontal_alignment.Center
                         Widget := BarSlot25
                           Padding := margin{Top := 100.0, Left := -550.0}
             overlay_slot:

                            HorizontalAlignment := horizontal_alignment.Center
                               Widget := BarSlot26
                                 Padding := margin{Top := 100.0, Left := 0.0}
             overlay_slot:

               HorizontalAlignment := horizontal_alignment.Center
                Widget := Texty
                Padding := margin{Top := 0.0, Left := -550.0}

             overlay_slot:

                   HorizontalAlignment := horizontal_alignment.Center
                     Widget := MyUIButton2
                     Padding := margin{Top := 250.0, Left := -550.0}

             overlay_slot:

                         HorizontalAlignment := horizontal_alignment.Center
                           Widget :=  Texty1
                           Padding := margin{Top := 0.0, Left := 0.0}
             overlay_slot:

                            HorizontalAlignment := horizontal_alignment.Center
                              Widget :=MyUIButton3
                              Padding := margin{Top := 250.0, Left := 0.0}

             overlay_slot:

                                  HorizontalAlignment := horizontal_alignment.Center
                                    Widget :=  Texty2
                                    Padding := margin{Top := 0.0, Left := 550.0}

             overlay_slot:

                                        HorizontalAlignment := horizontal_alignment.Center
                                          Widget := MyUIButton4
                                          Padding := margin{Top := 250.0, Left := 550.0}
             overlay_slot:

                                     HorizontalAlignment := horizontal_alignment.Center
                                        Widget := MyUIButton5
                                          Padding := margin{Top := 450.0, Left := 0.0}
             overlay_slot:

                                            HorizontalAlignment := horizontal_alignment.Center
                                              Widget :=  TextWidget
                                              Padding := margin{Top := 150.0, Left := -550.0}

             overlay_slot:

                                                  HorizontalAlignment := horizontal_alignment.Center
                                                    Widget :=TextWidget1
                                                    Padding := margin{Top := 150.0, Left := 0.0}
             overlay_slot:

                                               HorizontalAlignment := horizontal_alignment.Center
                                                  Widget := TextWidget2
                                                    Padding := margin{Top := 150.0, Left := 550.0}

        if(PlayerUI:= GetPlayerUI[X], FortCharacte:= X.GetFortCharacter[]):
                 Print("addedmainwidg")
               PlayerUI.AddWidget(Canvas9,player_ui_slot{InputMode:=ui_input_mode.All})
                 if(set PlayerCan5[X]= Canvas9):

             spawn:
                FortCharacte.UpdateDistance(TextWidget, X,TextWidget1,TextWidget2)
  Sleep(8.0)
      Print("removedmainwidg")
          for(Y:AllPlayers):
           if(PlayerUI:= GetPlayerUI[Y], FortCharacte:= Y.GetFortCharacter[]):
            if(Can:= PlayerCan5[Y]):

                     PlayerUI.RemoveWidget(Can)
   spawn:
    Tally()
  }
  PutCanvasLoad(Playery:player, Numb:int)<suspends>:void =
    {


       var XL:float = 340.0
       var YL:float = 165.0
       var XL2:float = 340.0
       var YL2:float = 215.0
       TextWidget:text_block= text_block{DefaultTextColor:=NamedColors.White}
       TextWidget1:text_block= text_block{DefaultTextColor:=NamedColors.White}
       TextWidget2:text_block= text_block{DefaultTextColor:=NamedColors.White}

        Bar1:texture = text.oney
        BarSlot1 := texture_block{
        DefaultImage := Bar1,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar2:texture = text.two
        BarSlot2 := texture_block{
        DefaultImage := Bar2,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar3:texture = text.Threee
        BarSlot3 := texture_block{
        DefaultImage := Bar3,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar4:texture = text.four
        BarSlot4 := texture_block{
        DefaultImage := Bar4,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar5:texture = text.fiveyyy
        BarSlot5 := texture_block{
        DefaultImage := Bar5,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar6:texture = text.six
        BarSlot6 := texture_block{
        DefaultImage := Bar6,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar7:texture = text.seven
        BarSlot7 := texture_block{
        DefaultImage := Bar7,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar8:texture = text.eight
        BarSlot8 := texture_block{
        DefaultImage := Bar8,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar9:texture = text.nine
        BarSlot9 := texture_block{
        DefaultImage := Bar9,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar10:texture = text.ten
        BarSlot10 := texture_block{
        DefaultImage := Bar10,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar11:texture = text.eleven
        BarSlot11 := texture_block{
        DefaultImage := Bar11,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar12:texture = text.twelve
        BarSlot12 := texture_block{
        DefaultImage := Bar12,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar13:texture = text.thirteen

        BarSlot13 := texture_block{
        DefaultImage := Bar13,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar14:texture = text.fourteenyy
        BarSlot14 := texture_block{
        DefaultImage := Bar14,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar15:texture = text.fifteene
        BarSlot15 := texture_block{
        DefaultImage := Bar15,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar16:texture = text.sixteenyyyyy
        BarSlot16 := texture_block{
        DefaultImage := Bar16,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar17:texture = text.seventeenyy
        BarSlot17 := texture_block{
        DefaultImage := Bar17,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar18:texture = text.eighteenyy
        BarSlot18 := texture_block{
        DefaultImage := Bar18,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar19:texture = text.nineteen
        BarSlot19 := texture_block{
        DefaultImage := Bar19,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar20:texture = text.twenty
        BarSlot20 := texture_block{
        DefaultImage := Bar20,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar21:texture = text.twentyonee
        BarSlot21 := texture_block{
        DefaultImage := Bar21,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar22:texture = text.TWENTYTWO
        BarSlot22 := texture_block{
        DefaultImage := Bar22,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar23:texture = text.twentythreey
        BarSlot23 := texture_block{
        DefaultImage := Bar23,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}

        Bar27:texture = text.twentyfour
        BarSlot27 := texture_block{
        DefaultImage := Bar27,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar28:texture = text.twentyfive
        BarSlot28 := texture_block{
        DefaultImage := Bar28,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}

        Bar30:texture = text.twentysixyyyy
        BarSlot30 := texture_block{
        DefaultImage := Bar30,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar31:texture = text.twentyseven
        BarSlot31 := texture_block{
        DefaultImage := Bar31,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar32:texture = text.twentyeight
        BarSlot32 := texture_block{
        DefaultImage := Bar32,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar33:texture = text.twentynine
        BarSlot33 := texture_block{
        DefaultImage := Bar33,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar34:texture = text.thirty
        BarSlot34 := texture_block{
        DefaultImage := Bar34,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar35:texture = text.thirtyoneyy
        BarSlot35 := texture_block{
        DefaultImage := Bar35,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar36:texture = text.thirtytwoyy
        BarSlot36 := texture_block{
        DefaultImage := Bar36,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar37:texture = text.thirtythree
        BarSlot37 := texture_block{
        DefaultImage := Bar37,
        DefaultDesiredSize := vector2{X:=310.0, Y:=150.0}}
        Bar38:texture = text.thirtyfour
        BarSlot38 := texture_block{
        DefaultImage := Bar38,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar39:texture = text.thirtyfive
        BarSlot39 := texture_block{
        DefaultImage := Bar39,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar40:texture = text.clear1
        BarSlot40 := texture_block{
        DefaultImage := Bar40,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar41:texture = text.Page10
        BarSlot41 := texture_block{
        DefaultImage := Bar41,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar49:texture = text.Page11
        BarSlot49 := texture_block{
        DefaultImage := Bar49,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar42:texture = text.loader1
        BarSlot42 := texture_block{
        DefaultImage := Bar42,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar43:texture = text.loader2
        BarSlot43 := texture_block{
        DefaultImage := Bar43,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar44:texture = text.loader3
        BarSlot44 := texture_block{
        DefaultImage := Bar44,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar45:texture = text.loader4
        BarSlot45 := texture_block{
        DefaultImage := Bar45,
        DefaultDesiredSize := vector2{X:=1920.0, Y:=1080.0}}
        Bar46:texture = text.thirtysix
        BarSlot46 := texture_block{
        DefaultImage := Bar46,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar47:texture = text.thirtyseveny
        BarSlot47 := texture_block{
        DefaultImage := Bar47,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
        Bar48:texture = text.thirtyeight
        BarSlot48 := texture_block{
        DefaultImage := Bar48,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar50:texture = text.thirtynineyyyy
        BarSlot50 := texture_block{
        DefaultImage := Bar50,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar51:texture = text.fourty
        BarSlot51 := texture_block{
        DefaultImage := Bar51,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar52:texture = text.fourtyoneyyy
        BarSlot52 := texture_block{
        DefaultImage := Bar52,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar53:texture = text.footytwo
        BarSlot53 := texture_block{
        DefaultImage := Bar53,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar100:texture = text.oneD
        BarSlot100 := texture_block{
        DefaultImage := Bar100,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar101:texture = text.twoD
        BarSlot101 := texture_block{
        DefaultImage := Bar101,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar102:texture = text.threeD
        BarSlot102 := texture_block{
        DefaultImage := Bar102,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar103:texture = text.fourD
        BarSlot103 := texture_block{
        DefaultImage := Bar103,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar104:texture = text.fourD
        BarSlot104 := texture_block{
        DefaultImage := Bar104,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar105:texture = text.sixD
        BarSlot105 := texture_block{
        DefaultImage := Bar105,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar106:texture = text.sevenD
        BarSlot106 := texture_block{
        DefaultImage := Bar106,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar107:texture = text.eightD
        BarSlot107 := texture_block{
        DefaultImage := Bar107,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar108:texture = text.nineD
        BarSlot108 := texture_block{
        DefaultImage := Bar108,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar109:texture = text.tenD
        BarSlot109 := texture_block{
        DefaultImage := Bar109,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar110:texture = text.elevenD
        BarSlot110 := texture_block{
        DefaultImage := Bar110,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar111:texture = text.twelveD
        BarSlot111 := texture_block{
        DefaultImage := Bar111,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar112:texture = text.thirteenD

        BarSlot112 := texture_block{
        DefaultImage := Bar112,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar113:texture = text.fourteenD
        BarSlot113 := texture_block{
        DefaultImage := Bar113,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar114:texture = text.fifteenD
        BarSlot114 := texture_block{
        DefaultImage := Bar114,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar115:texture = text.sixteenD
        BarSlot115 := texture_block{
        DefaultImage := Bar115,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar116:texture = text.sixteenD
        BarSlot116 := texture_block{
        DefaultImage := Bar116,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar117:texture = text.eighteenD
        BarSlot117 := texture_block{
        DefaultImage := Bar117,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar118:texture = text.nineteenD
        BarSlot118 := texture_block{
        DefaultImage := Bar118,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar119:texture = text.twentyD
        BarSlot119 := texture_block{
        DefaultImage := Bar119,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar120:texture = text.twentyoneD
        BarSlot120 := texture_block{
        DefaultImage := Bar120,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar121:texture = text.twentytwoD
        BarSlot121 := texture_block{
        DefaultImage := Bar121,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar122:texture = text.twentythreeD
        BarSlot122 := texture_block{
        DefaultImage := Bar122,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}

        Bar123:texture = text.twentyfourD
        BarSlot123 := texture_block{
        DefaultImage := Bar123,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar124:texture = text.twentyfiveD
        BarSlot124 := texture_block{
        DefaultImage := Bar124,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}

        Bar125:texture = text.twentysixD
        BarSlot125 := texture_block{
        DefaultImage := Bar125,
        DefaultDesiredSize := vector2{X:=XL+60.0, Y:=YL2+20.0}}
        Bar126:texture = text.twentysevenD
        BarSlot126 := texture_block{
        DefaultImage := Bar126,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar127:texture = text.twentyeightD
        BarSlot127 := texture_block{
        DefaultImage := Bar127,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar128:texture = text.twentynineD
        BarSlot128 := texture_block{
        DefaultImage := Bar128,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar129:texture = text.thirtyD
        BarSlot129 := texture_block{
        DefaultImage := Bar129,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar130:texture = text.thirtyoneD
        BarSlot130 := texture_block{
        DefaultImage := Bar130,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar131:texture = text.thirtytwoG
        BarSlot131 := texture_block{
        DefaultImage := Bar131,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar132:texture = text.thirtythreeD
        BarSlot132 := texture_block{
        DefaultImage := Bar132,
        DefaultDesiredSize := vector2{X:=310.0, Y:=210.0}}
        Bar133:texture = text.thirtyfourD
        BarSlot133 := texture_block{
        DefaultImage := Bar133,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar134:texture = text.thirtyfiveD
        BarSlot134 := texture_block{
        DefaultImage := Bar134,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar135:texture = text.thirtysixD
        BarSlot135 := texture_block{
        DefaultImage := Bar135,
        DefaultDesiredSize := vector2{X:=310.0, Y:=210.0}}
        Bar136:texture = text.thirtysevenD
        BarSlot136 := texture_block{
        DefaultImage := Bar136,
        DefaultDesiredSize := vector2{X:=280.0, Y:=160.0}}
        Bar137:texture = text.thirtyeightyD
        BarSlot137 := texture_block{
        DefaultImage := Bar137,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar138:texture = text.thirtynineyyyyy
        BarSlot138 := texture_block{
        DefaultImage := Bar138,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar139:texture = text.fourtyK
        BarSlot139:= texture_block{
        DefaultImage := Bar139,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar140:texture = text.fourtyoneF
        BarSlot140 := texture_block{
        DefaultImage := Bar140,
        DefaultDesiredSize := vector2{X:=XL, Y:=YL2}}
        Bar141:texture = text.fourtytwoT
        BarSlot141 := texture_block{
        DefaultImage := Bar141,
        DefaultDesiredSize := vector2{X:=300.0, Y:=200.0}}

        var TextyScreen:texture_block = BarSlot40
        var TextyScreen2:texture_block = BarSlot49
        var Texty:texture_block = BarSlot100
        var Texty1:texture_block = BarSlot101
        var Texty2:texture_block = BarSlot102
        var Texty3:texture_block = BarSlot103
        var Texty4:texture_block = BarSlot104
        var Texty5:texture_block = BarSlot105
        var Texty6:texture_block = BarSlot106
        var Texty7:texture_block = BarSlot107
        var Texty8:texture_block = BarSlot108
        var Texty9:texture_block = BarSlot109
        var Texty10:texture_block = BarSlot110
        var Texty11:texture_block = BarSlot111
        var Texty12:texture_block = BarSlot112
        var Texty13:texture_block = BarSlot113
        var Texty14:texture_block = BarSlot114
        var Texty15:texture_block = BarSlot115
        var Texty16:texture_block = BarSlot116
        var Texty17:texture_block = BarSlot117
        var Texty18:texture_block = BarSlot118
        var Texty19:texture_block = BarSlot119
        var Texty20:texture_block = BarSlot120
        var Texty21:texture_block = BarSlot121
        var Texty22:texture_block = BarSlot122
        var Texty23:texture_block = BarSlot123
        var Texty24:texture_block = BarSlot124
        var Texty25:texture_block = BarSlot126
        var Texty26:texture_block = BarSlot127
        var Texty27:texture_block = BarSlot128
        var Texty28:texture_block = BarSlot129
        var Texty29:texture_block = BarSlot130
        var Texty30:texture_block = BarSlot131
        var Texty31:texture_block = BarSlot132
        var Texty32:texture_block = BarSlot133
        var Texty33:texture_block = BarSlot134
        var Texty34:texture_block = BarSlot129
        var Texty35:texture_block = BarSlot134
        var Texty36:texture_block = BarSlot135
        var Texty37:texture_block = BarSlot136
        var Texty38:texture_block = BarSlot137
        var Texty39:texture_block = BarSlot138
        var Texty40:texture_block = BarSlot139
        var Texty41:texture_block = BarSlot140
        var Texty42:texture_block = BarSlot141
        var Texty43:texture_block = BarSlot141
        var Num:int = 0
           var upnum:int = 0
          if(Numb=0):
             set TextyScreen= BarSlot42
          if(Numb=1):
              set TextyScreen= BarSlot43
          if(Numb=2):
                set TextyScreen= BarSlot44
          if(Numb=3):
                  set TextyScreen= BarSlot45
          if(Numb=4):
                    set TextyScreen= BarSlot41
          if(Numb=5):
                      set TextyScreen= BarSlot41
          if(Numb = 5 or Numb = 4):
            if(Playery.IsActive[]):
              if(Air:= PlayerStatsMap[Playery]):
               Airy:= Air.GamesWon
                for(Numt:Airy):

                 set Num= Numt+1
                         Print("{Num} number loader")
                    if(Num = 1):

                            set Texty = BarSlot1


                    if(Num = 2):

                        set Texty1 = BarSlot2


                    if(Num = 3):

                        set Texty2 = BarSlot3


                    if(Num = 4):

                        set Texty3 = BarSlot4

                    if(Num = 5):

                        set Texty4 = BarSlot5


                    if(Num = 6):

                        set Texty5 = BarSlot6


                    if(Num = 7):

                        set Texty6 = BarSlot7


                    if(Num = 8):

                        set Texty7 = BarSlot8


                    if(Num = 9):

                        set Texty8 = BarSlot9


                    if(Num = 10):

                        set Texty9 = BarSlot10


                    if(Num = 11):

                        set Texty10 = BarSlot11


                    if(Num = 12):

                        set Texty11 = BarSlot12


                    if(Num =13):

                        set Texty12 = BarSlot13


                    if(Num = 14):

                        set Texty13 = BarSlot14


                    if(Num = 15):

                        set Texty14 = BarSlot15


                    if(Num = 16):

                        set Texty15 = BarSlot16


                    if(Num = 17):

                        set Texty16 = BarSlot17


                    if(Num = 18):

                        set Texty17 = BarSlot18


                    if(Num = 19):

                        set Texty18 = BarSlot19


                    if(Num = 20):

                        set Texty19 = BarSlot20


                    if(Num = 21):

                        set Texty20 = BarSlot21

                    if(Num = 22):

                                set Texty21 = BarSlot22

                    if(Num = 23):

                                        set Texty22 = BarSlot23

                    if(Num = 24):

                                      set Texty23 = BarSlot27

                    if(Num = 25):
                                              set Texty24 = BarSlot28

                    if(Num = 26):
                                          set Texty43 = BarSlot30

                    if(Num = 27):

                                                 set Texty25 = BarSlot31

                    if(Num = 28):
                                                            set Texty26 = BarSlot32


                    if(Num = 29):
                                                                  set Texty27 = BarSlot33

                    if(Num = 30):

                                                                 set Texty28 = BarSlot34

                    if(Num = 31):

                                                     set Texty29 = BarSlot35

                    if(Num = 32):

                                                     set Texty30 = BarSlot36

                    if(Num = 33):

                                                   set Texty31 = BarSlot37

                    if(Num = 34):

                                                    set Texty32 = BarSlot38

                    if(Num = 35):

                                                 set Texty33 = BarSlot39
                    if(Num = 36):

                                                  set Texty36 = BarSlot46
                    if(Num = 37):

                                                    set Texty37 = BarSlot47

                    if(Num = 38):

                                                      set Texty38 = BarSlot48
                    if(Num = 39):

                                                        set Texty39 = BarSlot50
                    if(Num = 40):

                                                         set Texty40 = BarSlot51
                    if(Num = 41):

                                                           set Texty41 = BarSlot52

                    if(Num = 42):

                                                             set Texty42 = BarSlot53


                      set upnum +=1

          Canvas50:canvas = canvas:


             Slots := array:
              canvas_slot:
                Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.5}, Maximum := vector2{X := 0.5, Y := 0.5}}
                 Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                  Alignment := vector2{X := 0.5, Y := 0.5}
                   Widget:=overlay:
                     Slots := array:
                            overlay_slot:

                             HorizontalAlignment := horizontal_alignment.Center
                              Widget := TextyScreen2
                              Padding := margin{Top := 0.0, Left := 0.0}
                            overlay_slot:

                                HorizontalAlignment := horizontal_alignment.Center
                                 Widget := Texty28
                                  Padding := margin{Top := -360.0, Left := -720.0}
                            overlay_slot:

                                HorizontalAlignment := horizontal_alignment.Center
                                   Widget := Texty30
                                     Padding := margin{Top := -360.0, Left := -390.0}
                            overlay_slot:

                                      HorizontalAlignment := horizontal_alignment.Center
                                         Widget := Texty37
                                           Padding := margin{Top := -360.0, Left := -30.0}
                            overlay_slot:

                                            HorizontalAlignment := horizontal_alignment.Center
                                               Widget := Texty36
                                                 Padding := margin{Top := -360.0, Left := 320.0}
                            overlay_slot:

                                                  HorizontalAlignment := horizontal_alignment.Center
                                                     Widget := Texty38
                                                       Padding := margin{Top := -360.0, Left := 680.0}
                            overlay_slot:

                                                        HorizontalAlignment := horizontal_alignment.Center
                                                           Widget := Texty38
                                                             Padding := margin{Top := 500.0, Left := 720.0}

                           overlay_slot:

                                                                    HorizontalAlignment := horizontal_alignment.Center
                                                                     Widget := Texty39
                                                                      Padding := margin{Top := -170.0, Left := -720.0}
                           overlay_slot:

                                                                    HorizontalAlignment := horizontal_alignment.Center
                                                                       Widget := Texty40
                                                                         Padding := margin{Top := -163.0, Left := -370.0}
                           overlay_slot:

                                                                          HorizontalAlignment := horizontal_alignment.Center
                                                                             Widget := Texty41
                                                                               Padding := margin{Top := -200.0, Left := -30.0}


          Canvas24:canvas = canvas:


                                                        Slots := array:
                                                         canvas_slot:
                                                           Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.5}, Maximum := vector2{X := 0.5, Y := 0.5}}
                                                            Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
                                                             Alignment := vector2{X := 0.5, Y := 0.5}
                                                              Widget:=overlay:
                                                                Slots := array:
                                                                       overlay_slot:

                                                                        HorizontalAlignment := horizontal_alignment.Center
                                                                         Widget := TextyScreen
                                                                         Padding := margin{Top := 0.0, Left := 0.0}

          Canvas20:canvas = canvas:


           Slots := array:
            canvas_slot:
             Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.5}, Maximum := vector2{X := 0.5, Y := 0.5}}
             Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
             Alignment := vector2{X := 0.5, Y := 0.5}
             Widget:=overlay:
              Slots := array:
                overlay_slot:

                  HorizontalAlignment := horizontal_alignment.Center
                     Widget := TextyScreen
                       Padding := margin{Top := 0.0, Left := 0.0}
               overlay_slot:

                  HorizontalAlignment := horizontal_alignment.Center
                   Widget := Texty
                    Padding := margin{Top := -362.0, Left := -720.0}
               overlay_slot:

                  HorizontalAlignment := horizontal_alignment.Center
                     Widget := Texty1
                       Padding := margin{Top := -362.0, Left := -385.0}
               overlay_slot:

                        HorizontalAlignment := horizontal_alignment.Center
                           Widget := Texty2
                             Padding := margin{Top := -362.0, Left := -32.0}
               overlay_slot:

                              HorizontalAlignment := horizontal_alignment.Center
                                 Widget := Texty3
                                   Padding := margin{Top := -362.0, Left := 320.0}
               overlay_slot:

                                    HorizontalAlignment := horizontal_alignment.Center
                                       Widget := Texty5
                                         Padding := margin{Top := -362.0, Left := 680.0}
               overlay_slot:

                                          HorizontalAlignment := horizontal_alignment.Center
                                             Widget := Texty6
                                               Padding := margin{Top := -197.0, Left := -720.0}
               overlay_slot:

                                                HorizontalAlignment := horizontal_alignment.Center
                                                   Widget := Texty7
                                                     Padding := margin{Top := -197.0, Left := -385.0}
               overlay_slot:

                                                      HorizontalAlignment := horizontal_alignment.Center
                                                         Widget := Texty8
                                                           Padding := margin{Top := -197.0, Left := -32.0}
               overlay_slot:

                                                            HorizontalAlignment := horizontal_alignment.Center
                                                               Widget := Texty9
                                                                 Padding := margin{Top := -197.0, Left := 320.0}
               overlay_slot:

                                                                  HorizontalAlignment := horizontal_alignment.Center
                                                                     Widget := Texty10
                                                                       Padding := margin{Top := -197.0, Left := 680.0}
               overlay_slot:

                                                                        HorizontalAlignment := horizontal_alignment.Center
                                                                           Widget := Texty11
                                                                             Padding := margin{Top := -32.0, Left := -720.0}
               overlay_slot:

                                                                              HorizontalAlignment := horizontal_alignment.Center
                                                                                 Widget :=Texty12
                                                                                   Padding := margin{Top := -32.0, Left := -385.0}
               overlay_slot:

                                                                                    HorizontalAlignment := horizontal_alignment.Center
                                                                                       Widget := Texty13
                                                                                         Padding := margin{Top := -32.0, Left := -32.0}
               overlay_slot:

                                                                                          HorizontalAlignment := horizontal_alignment.Center
                                                                                             Widget := Texty14
                                                                                               Padding := margin{Top := -32.0, Left := 320.0}
               overlay_slot:

                                                                                                HorizontalAlignment := horizontal_alignment.Center
                                                                                                   Widget := Texty15
                                                                                                     Padding := margin{Top := -32.0, Left := 680.0}
               overlay_slot:

                                                                                                      HorizontalAlignment := horizontal_alignment.Center
                                                                                                         Widget := Texty17
                                                                                                           Padding := margin{Top := 133.0, Left := -720.0}
               overlay_slot:

                                                                                                            HorizontalAlignment := horizontal_alignment.Center
                                                                                                               Widget := Texty18
                                                                                                                 Padding := margin{Top := 133.0, Left := -385.0}
               overlay_slot:

                                                                                                                  HorizontalAlignment := horizontal_alignment.Center
                                                                                                                     Widget :=Texty19
                                                                                                                       Padding := margin{Top := 133.0, Left := -32.0}
               overlay_slot:

                                                                                                                        HorizontalAlignment := horizontal_alignment.Center
                                                                                                                           Widget := Texty20
                                                                                                                             Padding := margin{Top := 133.0, Left := 320.0}
               overlay_slot:

                                                                                                                              HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                 Widget := Texty21
                                                                                                                                   Padding := margin{Top := 133.0, Left := 680.0}
               overlay_slot:

                                                                                                                                    HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                       Widget := Texty22
                                                                                                                                         Padding := margin{Top := 298.0, Left := -720.0}
               overlay_slot:

                                                                                                                                          HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                             Widget := Texty23
                                                                                                                                               Padding := margin{Top := 298.0, Left := -385.0}
               overlay_slot:

                                                                                                                                                HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                   Widget := Texty24
                                                                                                                                                     Padding := margin{Top := 298.0, Left := -32.0}
               overlay_slot:

                                                                                                                                                      HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                         Widget := Texty25
                                                                                                                                                           Padding := margin{Top := 298.0, Left := 320.0}
               overlay_slot:

                                                                                                                                                            HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                               Widget := Texty26
                                                                                                                                                                 Padding := margin{Top := 298.0, Left := 680.0}
               overlay_slot:

                                                                                                                                                                  HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                                     Widget := Texty27
                                                                                                                                                                       Padding := margin{Top := 463.0, Left := -720.0}
               overlay_slot:

                                                                                                                                                                        HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                                           Widget := Texty29
                                                                                                                                                                             Padding := margin{Top := 465.0, Left := -385.0}
               overlay_slot:

                                                                                                                                                                              HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                                                 Widget := Texty31
                                                                                                                                                                                   Padding := margin{Top := 465.0, Left := -32.0}
               overlay_slot:

                                                                                                                                                                                    HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                                                       Widget := Texty32
                                                                                                                                                                                         Padding := margin{Top := 465.0, Left := 320.0}
               overlay_slot:

                                                                                                                                                                                          HorizontalAlignment := horizontal_alignment.Center
                                                                                                                                                                                             Widget := Texty33
                                                                                                                                                                                               Padding := margin{Top := 465.0, Left := 680.0}

          if(PlayerUI:= GetPlayerUI[Playery], FortCharacte:= Playery.GetFortCharacter[]):
                   Print("addedloafwidg")
               if(Numb = 4 or Numb = 5):
                 PlayerUI.AddWidget(Canvas20,player_ui_slot{InputMode:=ui_input_mode.All})
                   if(set PlayerCan20[Playery]= Canvas20):
               else:
                PlayerUI.AddWidget(Canvas24,player_ui_slot{InputMode:=ui_input_mode.All})
                   if(set PlayerCan24[Playery]= Canvas24):


          Sleep(5.0)
            if(Numb = 4 or Numb = 5):

               if(PlayerUI:= GetPlayerUI[Playery], FortCharacte:= Playery.GetFortCharacter[]):
                 if(Can:= PlayerCan20[Playery]):
                   if(Playery.IsActive[]):
                    if(Air:= PlayerStatsMap[Playery]):
                      Airy:= Air.GamesWon

                           PlayerUI.AddWidget(Canvas50,player_ui_slot{InputMode:=ui_input_mode.All})
                                if(set PlayerCan50[Playery]= Canvas50):

                              PlayerUI.RemoveWidget(Can)
          Sleep(5.0)
                  Print("removedloadw")
                 if(Numb = 4 or Numb = 5):

                                if(PlayerUI:= GetPlayerUI[Playery], FortCharacte:= Playery.GetFortCharacter[]):
                                   if(Can:= PlayerCan50[Playery]):

                                        PlayerUI.RemoveWidget(Can)
                 else:

                             if(PlayerUI:= GetPlayerUI[Playery], FortCharacte:= Playery.GetFortCharacter[]):
                               if(Can:= PlayerCan20[Playery]):

                                        PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan50[Playery]):
                                     PlayerUI.RemoveWidget(Can)
                               if(Can:= PlayerCan24[Playery]):
                                      PlayerUI.RemoveWidget(Can)
    }
     (FortCharacter:fort_character).UpdateDistance(TextBlock:text_block, Playa: player,TextBlock1:text_block,TextBlock2:text_block)<suspends>:void=
      {
       var breaknum:int = 80
        loop:
             if(Breaknum = 1):
               break
           set breaknum-=1
           set Nummy1=0
           set Nummy2=0
           set Nummy3=0

           AllPlayers:=GetPlayspace().GetPlayers()
                                    for(X:AllPlayers):
                                     if(X.IsActive[])  :
                                      if(N:= PlayerChoice[X]):
                                         if(Stats:=PlayerStatsMap[X]):
                                          T:= Stats.GamesWon.Length
                                           if(Nud:= Floor(T/3)):


                                            if(N=0):
                                                  set Nummy1+=10+Nud
                                            if(N=1):
                                                  set Nummy2+=10+Nud
                                            if(N=2):
                                                       set Nummy3+=10+Nud


                         if(Numer:= Mod[Nummy1,10]):
                          if(Numer2:= Floor(Nummy1/10)):
                           if(Numer3:= Mod[Nummy2,10]):
                            if(Numer4:= Floor(Nummy2/10)):
                             if(Numer5:= Mod[Nummy3,10]):
                              if(Numer6:= Floor(Nummy3/10)):
                               TextBlock.SetText(UIText5("{Numer2}","{Numer}"))
                               TextBlock1.SetText(UIText5("{Numer4}","{Numer3}"))
                               TextBlock2.SetText(UIText5("{Numer6}","{Numer5}"))
              Sleep(0.1)
               if(breaknum=0) :
                 break

      }
      Tally()<suspends>:void={
       loop:
        Sleep(0.1)
           if(Breaknum = 1):
             break
        if(Nummy1>Nummy2 and Nummy1>Nummy3):
          if(Numberwin:= Ary[0]):
           spawn:
            PlayGame(Numberwin)
           Print("game1")
          break
        if(Nummy2>Nummy1 and Nummy2>Nummy3):
          if(Numberwin:= Ary[1]):
            spawn:
             PlayGame(Numberwin)
            Print("game2")
           break
        if(Nummy3>Nummy1 and Nummy3>Nummy2):
         if(Numberwin:= Ary[2]):
           spawn:
             PlayGame(Numberwin)
           Print("game3")
          break
        if(Nummy3= Nummy2):
         if(Numberwin:= Ary[2]):
          spawn:
           PlayGame(Numberwin)
          Print("game4")
         break
        if(Nummy3= Nummy1):

            if(Numberwin:= Ary[2]):
               spawn:
                PlayGame(Numberwin)
               Print("game5")
              break
        if(Nummy2= Nummy1):
         if(Numberwin:= Ary[1]):
          spawn:
           PlayGame(Numberwin)
          Print("game6")
         break
      }
      PutCanvasEveryone(Num:int, Player:player, Numcheck:int)<suspends>:void =
        {
           var XL:float = 450.0
           var YL:float = 200.0
        if(EndCheck=0):
           TextWidget:text_block= text_block{DefaultTextColor:=NamedColors.White}

            Bar1:texture = text.oney2
            BarSlot1 := texture_block{
            DefaultImage := Bar1,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar2:texture = text.twoy
            BarSlot2 := texture_block{
            DefaultImage := Bar2,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar3:texture = text.threeyyy
            BarSlot3 := texture_block{
            DefaultImage := Bar3,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar4:texture = text.foury
            BarSlot4 := texture_block{
            DefaultImage := Bar4,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar5:texture = text.fiveyyyyyyy
            BarSlot5 := texture_block{
            DefaultImage := Bar5,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar6:texture = text.sixy
            BarSlot6 := texture_block{
            DefaultImage := Bar6,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar7:texture = text.sevenyy
            BarSlot7 := texture_block{
            DefaultImage := Bar7,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar8:texture = text.eighty
            BarSlot8 := texture_block{
            DefaultImage := Bar8,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar9:texture = text.niney
            BarSlot9 := texture_block{
            DefaultImage := Bar9,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar10:texture = text.tenyyy
            BarSlot10 := texture_block{
            DefaultImage := Bar10,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar11:texture = text.eleveny
            BarSlot11 := texture_block{
            DefaultImage := Bar11,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar12:texture = text.twelveyyy
            BarSlot12 := texture_block{
            DefaultImage := Bar12,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar13:texture = text.thirteen
            BarSlot13 := texture_block{
            DefaultImage := Bar13,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar14:texture = text.fourteenyy
            BarSlot14 := texture_block{
            DefaultImage := Bar14,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar15:texture = text.fifteenyyy
            BarSlot15 := texture_block{
            DefaultImage := Bar15,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar16:texture = text.sixteenyyyyyyy
            BarSlot16 := texture_block{
            DefaultImage := Bar16,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar17:texture = text.seventeenyyyy
            BarSlot17 := texture_block{
            DefaultImage := Bar17,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar18:texture = text.eighteenyyy
            BarSlot18 := texture_block{
            DefaultImage := Bar18,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar19:texture = text.nineteeny
            BarSlot19 := texture_block{
            DefaultImage := Bar19,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar20:texture = text.twentyy
            BarSlot20 := texture_block{
            DefaultImage := Bar20,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar21:texture = text.twentyoneyyyyy
            BarSlot21 := texture_block{
            DefaultImage := Bar21,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar22:texture = text.TWENTYTWO
            BarSlot22 := texture_block{
            DefaultImage := Bar22,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar23:texture = text.twentythreey
            BarSlot23 := texture_block{
            DefaultImage := Bar23,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}

            Bar24:texture = text.trophy
            BarSlot24 := texture_block{
            DefaultImage := Bar24,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}

            Bar25:texture = text.twentyfouryy
            BarSlot25 := texture_block{
            DefaultImage := Bar25,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar26:texture = text.twentyfivey
            BarSlot26 := texture_block{
            DefaultImage := Bar26,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar27:texture = text.trophy
            BarSlot27 := texture_block{
            DefaultImage := Bar27,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar28:texture = text.twentysixyyyyy
            BarSlot28 := texture_block{
            DefaultImage := Bar28,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar29:texture = text.twentyseveny
            BarSlot29 := texture_block{
            DefaultImage := Bar29,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar30:texture = text.twentyeight
            BarSlot30 := texture_block{
            DefaultImage := Bar30,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar31:texture = text.twentyniney
            BarSlot31 := texture_block{
            DefaultImage := Bar31,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar32:texture = text.thirty
            BarSlot32 := texture_block{
            DefaultImage := Bar32,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar33:texture = text.thirtyoney
            BarSlot33 := texture_block{
            DefaultImage := Bar33,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar34:texture = text.thirtytwoyyy
            BarSlot34 := texture_block{
            DefaultImage := Bar34,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar35:texture = text.thirtythree
            BarSlot35 := texture_block{
            DefaultImage := Bar35,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar36:texture = text.thirtyfoury
            BarSlot36 := texture_block{
            DefaultImage := Bar36,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar37:texture = text.thirtyfive
            BarSlot37 := texture_block{
            DefaultImage := Bar37,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar38:texture = text.thirtysixy
            BarSlot38 := texture_block{
            DefaultImage := Bar38,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar39:texture = text.thirtyseveny
            BarSlot39 := texture_block{
            DefaultImage := Bar39,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar40:texture = text.thirtyeight
            BarSlot40 := texture_block{
            DefaultImage := Bar40,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar41:texture = text.thirtynineyyy
            BarSlot41 := texture_block{
            DefaultImage := Bar41,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar42:texture = text.fourtyy
            BarSlot42 := texture_block{
            DefaultImage := Bar42,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar43:texture = text.fourtyoneyyyy
            BarSlot43 := texture_block{
            DefaultImage := Bar43,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            Bar44:texture = text.fourtytwoy
            BarSlot44 := texture_block{
            DefaultImage := Bar44,
            DefaultDesiredSize := vector2{X:=XL, Y:=YL}}
            var Texty1:texture_block = BarSlot1

                      var upnum:int = 0

                            if(Num = 1):


                                      set Texty1 = BarSlot1


                            if(Num = 2):

                                  set Texty1 = BarSlot2


                            if(Num = 3):

                                  set Texty1 = BarSlot3


                            if(Num = 4):

                                  set Texty1 = BarSlot4


                            if(Num = 5):

                                  set Texty1 = BarSlot5


                            if(Num = 6):

                                  set Texty1 = BarSlot6


                            if(Num = 7):

                                  set Texty1 = BarSlot7


                            if(Num = 8):

                                  set Texty1 = BarSlot8


                            if(Num = 9):

                                  set Texty1 = BarSlot9

                            if(Num = 10):

                                  set Texty1 = BarSlot10


                            if(Num = 11):

                                  set Texty1 = BarSlot11


                            if(Num = 12):

                                  set Texty1 = BarSlot12

                            if(Num =13):

                                  set Texty1 = BarSlot13


                            if(Num = 14):

                                  set Texty1 = BarSlot14

                            if(Num = 15):

                                  set Texty1 = BarSlot15


                            if(Num = 16):

                                  set Texty1 = BarSlot16


                            if(Num = 17):

                                  set Texty1 = BarSlot17


                            if(Num = 18):

                                  set Texty1 = BarSlot18


                            if(Num = 19):

                                  set Texty1 = BarSlot19


                            if(Num = 20):

                                  set Texty1 = BarSlot20


                            if(Num = 21):

                                  set Texty1 = BarSlot21
                            if(Num = 22):

                                    set Texty1 = BarSlot22
                            if(Num = 23):

                                      set Texty1 = BarSlot23
                            if(Num = 24):

                                        set Texty1 = BarSlot25
                            if(Num = 25):

                                          set Texty1 = BarSlot26
                            if(Num = 26):

                                            set Texty1 = BarSlot28
                            if(Num = 27):

                                              set Texty1 = BarSlot29
                            if(Num = 28):

                                                set Texty1 = BarSlot30
                            if(Num = 29):

                                                  set Texty1 = BarSlot31
                            if(Num = 30):

                                                    set Texty1 = BarSlot32
                            if(Num = 31):

                                                      set Texty1 = BarSlot33
                            if(Num = 32):

                                                        set Texty1 = BarSlot34
                            if(Num = 33):

                                                          set Texty1 = BarSlot35
                            if(Num = 34):

                                                            set Texty1 = BarSlot36
                            if(Num = 35):

                                                              set Texty1 = BarSlot37
                            if(Num = 36):

                                                                set Texty1 = BarSlot38
                            if(Num = 37):

                                                                  set Texty1 = BarSlot39
                            if(Num = 38):

                                                                    set Texty1 = BarSlot40
                            if(Num = 39):

                                                                      set Texty1 = BarSlot41
                            if(Num = 40):

                                                                        set Texty1 = BarSlot42
                            if(Num = 41):

                                                                          set Texty1 = BarSlot43
                            if(Num = 42):

                                                                            set Texty1 = BarSlot44

                           set upnum +=1
           Canvas10:canvas = canvas:


             Slots := array:
              canvas_slot:
               Anchors := anchors{Minimum := vector2{X := 0.15, Y := 0.69}, Maximum := vector2{X := 0.15, Y := 0.69}}
               Offsets := margin{Top := 90.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
               Alignment := vector2{X := 0.5, Y := 0.5}
               Widget:=overlay:
                Slots := array:
                 overlay_slot:

                    HorizontalAlignment := horizontal_alignment.Center
                     Widget := Texty1
                     Padding := margin{Top := 0.0, Left := 0.0}


                 overlay_slot:

                        HorizontalAlignment := horizontal_alignment.Center
                         Widget := TextWidget
                         Padding := margin{Top := -530.0, Left :=1530.0}


          if(PlayerUI:= GetPlayerUI[Player], FortCharacte:= Player.GetFortCharacter[]):
                   if(GameNumber>-1) :
                     PlayerUI.AddWidget(Canvas10)
                       if(set PlayerCan10[Player]= Canvas10):


        }


    HandleRespawn(Message:widget_message):void =
        {
          Plu:= Message.Player
          if(Age:= agent[Plu]):
           if(Age2:= Age.GetFortCharacter[]):
              if(Nu:=PlayerCan5[Plu]):
                 Rot:= Age2.GetViewRotation()
                   Randi:= GetRandomInt(0,14)
                    if(Gol:= NormSpawn[Randi]):
                       Plu.Respawn(Gol,Rot)
                   if(Plu.IsActive[]):
                    if(Class:= Teams[9]):
                      Class.ChangeClass(Age)
                if(PlayerUI:= GetPlayerUI[Plu], FortCharacte:= Plu.GetFortCharacter[]):
                      if(Can:= PlayerCan11[Plu], player_ui_slot{InputMode:=ui_input_mode.All}):
                        Print("widgRemoved")
                               PlayerUI.RemoveWidget(Can)

        }
    Reespawnbut(Playa:player)<suspends>:void =
      {

      MyUIButtonRespawn : button_loud = button_loud{DefaultText := TextForMyUI3}
       MyUIButtonRespawn.OnClick().Subscribe(HandleRespawn)
         Canvas11:canvas = canvas:

          Slots := array:
           canvas_slot:
            Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.8}, Maximum := vector2{X := 0.5, Y := 0.8}}
            Offsets := margin{Top := 90.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
            Alignment := vector2{X := 0.5, Y := 0.5}
            Widget:=overlay:
             Slots := array:
              overlay_slot:

                 HorizontalAlignment := horizontal_alignment.Center
                   Widget := MyUIButtonRespawn
                   Padding := margin{Top := 0.0, Left := 0.0}


         if(PlayerUI:= GetPlayerUI[Playa], FortCharacte:= Playa.GetFortCharacter[]):

                  PlayerUI.AddWidget(Canvas11,player_ui_slot{InputMode:=ui_input_mode.All})
                    if(set PlayerCan11[Playa]= Canvas11):
                     Sleep(22.0)
                      if(Can:= PlayerCan11[Playa]):
                        PlayerUI.RemoveWidget(Can)


      }
    PutCode(Playa:player)<suspends>:void =
        {


        Bar1:texture = text.coasty2
        BarSlot1 := texture_block{
        DefaultImage := Bar1,
        DefaultDesiredSize := vector2{X:=250.0, Y:=60.0}}
           Canvas13:canvas = canvas:

            Slots := array:
             canvas_slot:
              Anchors := anchors{Minimum := vector2{X := 0.5, Y := 0.01}, Maximum := vector2{X := 0.5, Y := 0.01}}
              Offsets := margin{Top := 0.0, Left := 0.0, Right := 0.0, Bottom := 0.0}
              Alignment := vector2{X := 0.5, Y := 0.23}
              Widget:=overlay:
               Slots := array:
                overlay_slot:

                   HorizontalAlignment := horizontal_alignment.Center
                     Widget := BarSlot1
                     Padding := margin{Top := 0.0, Left := 0.0}


           if(PlayerUI:= GetPlayerUI[Playa], FortCharacte:= Playa.GetFortCharacter[]):

                    PlayerUI.AddWidget(Canvas13)
                      if(set PlayerCan13[Playa]= Canvas13):


        }
    PlayerSpec(Playa:agent):void =
     {
        if(Class:= Teams[5]):
           Class.ChangeClass(Playa)
          if(character:= Playa.GetFortCharacter[]):
             character.Damage(500.0)
     }

    Mix()<suspends>:void =
      {
        Sleep(1.0)
        var numer:int = 0

        AllPlayers:=GetPlayspace().GetPlayers()
          for(F:AllPlayers):
            if(Team:= Teams[numer]):
               Team.ChangeTeam(F)
           set numer+=1
      }
    TeamCheckpoints()<suspends>:void =
        {

          var numer:int = 0

          AllPlayers:=GetPlayspace().GetPlayers()
            for(F:AllPlayers):
              Print("checkiesss")
              if(Num:= PlayerAliveTeam[F]):
                 if(Num=6):
                  Rando:= GetRandomInt(0,7)
                   if(O:= RedChecks[Rando]):
                    Print("checkiesss1")
                     O.Register(F)
                 if(Num=7):
                      Rando:= GetRandomInt(0,7)
                       if(O:= BlueChecks[Rando]):
                        Print("checkiesss2")
                         O.Register(F)
          loop:
              if(Breaknum = 1):
                 break
            Sleep(2.0)
            AllPlayers2:=GetPlayspace().GetPlayers()
             for(F:AllPlayers2):
              if(Num:= PlayerAliveTeam[F]):
                 if(Num=6):
                  Rando:= GetRandomInt(0,7)
                   if(O:= RedChecks[Rando]):
                     O.Register(F)
                 if(Num=7):
                      Rando:= GetRandomInt(0,7)
                       if(O:= BlueChecks[Rando]):
                         O.Register(F)


        }
    Added(Playa:agent):void =
        {
           spawn:
            Added2(Playa)
          if(Play:= player[Playa]):
           if(Play.IsActive[]) :
            if(PlayerStatsMap[Play]):
              Print("stats")
            else:
               if(set PlayerStatsMap[Play]=player_stats{}):
                Print("stats")
        }
    Removed(Playa:agent):void =
          {
             if(X:= player[Playa]):
              if(set PlayerAlive[X]=0):
                if(set PlayerAliveTeam[X]=0):
                if(set PlayerAliveTeamWin[X]=0):
          }
    Added2(Playa:agent)<suspends>:void =
    {
     Sleep(3.0)
        AllPlayers:=GetPlayspace().GetPlayers()
       if(Pla:= player[Playa]):
         if(Can:= PlayerCancels[Pla]):
           Can.Cancel()


        if(YU:= Playa.GetFortCharacter[]):
          Set:= YU.EliminatedEvent().Subscribe(PlayerelimedGG)
            if(set  PlayerCancels[Pla]=Set):

      if(AllPlayers.Length<=2):

       if(one:=AllPlayers[0]):
        Playerfinish(one,1)
      else:

        if(Play:= player[Playa]):
          if(set PlayerPumpElims[Play]=0 ):
            if(set PlayerGGElims[Play]=0 ):
           if(set  LastXPosition[Play]=0.0 ):
             if(set  LastYPosition[Play]=0.0 ):
              if(set  PlayerAlive[Play]=0):

            spawn:

                PutCanvasEveryone(GameNumber+1,Play,1)
          if(GameNumber=9 or GameNumber=11 or GameNumber =20 or GameNumber =28 or GameNumber = 31 or GameNumber = 38 or GameNumber = 39 or GameNumber = 40 ):
             spawn:
               Mix()
            if(set  PlayerAlive[Play]=1):
              if(Pl:=player[Playa]):
                spawn:
                  PutElims(Pl)

          if(GameNumber=9 or GameNumber=11 or GameNumber =20 or GameNumber = 5 or GameNumber = 23 or GameNumber = 24  or GameNumber = 26 or GameNumber = 38 or GameNumber = 39 or GameNumber = 40 ):
                Print("loadnorm")
          else:
             if(Switcher:= TeamsPit[Pitnum]):
              Switcher.ChangeTeam(Playa)
                set Pitnum+=1
             else:
              if(Switcher:= TeamsPit[19]):
                Switcher.ChangeTeam(Playa)
          if(GameNumber=9 or GameNumber=11 or GameNumber = 31):
            if(Play.GetFortCharacter[].IsActive[]):
                if(Team1:= Teams[0]):
                  Team1.ChangeClass(Play)
          if(GameNumber=9 or GameNumber = 40):

                  if(Gun:= RealG2Granter[0]):
                      Gun.GrantItem(Playa)
          if(GameNumber=31):
             SpookyGranter.GrantItem(Playa)

          if(GameNumber=11):

                    Trig.Trigger(Playa)
                        if(Gun:=  RealG2Granter[0]):
                            Gun.GrantItem(Playa)
          if(GameNumber=20):
            if(set  PlayerAlive[Play]=1):
              if(Play.GetFortCharacter[].IsActive[]):
                  if(Team1:= Teams[4]):
                    Team1.ChangeClass(Play)

                  VWGranter.GrantItem(Playa)

          if(GameNumber = 5):
            if(Team:= Teams[1]):
              Team.ChangeTeam(Playa)
            if(Class:= Teams[2]):
              if(Play.GetFortCharacter[].IsActive[]):
               Class.ChangeClass(Playa)
            if(set  PlayerAlive[Play]=1):
          if(GameNumber = 23 or GameNumber = 24 or GameNumber = 26 ):

            if(Team1:= Teams[15]):
              if(Play.GetFortCharacter[].IsActive[]):
               Team1.ChangeClass(Playa)
            if(Teamspawnnum=0):
              if(set PlayerAliveTeam[Play]=6):

              if(Team:= TeamsPit[18]):
                 Team.ChangeTeam(Playa)
                 set Teamspawnnum= 1
                 if(GameNumber=26):

                    spawn:
                      TeleToCar(Play, 6)
              spawn:
                PutRedvsBlue(Play,6)

            else:

              if(set PlayerAliveTeam[Play]=7):
                if(Team:= TeamsPit[19]):
                  Team.ChangeTeam(Playa)
                  set Teamspawnnum= 0
                  if(GameNumber=26):
                       spawn:
                        TeleToCar(Play, 7)
                spawn:
                    PutRedvsBlue(Play,7)
          if(GameNumber = 23):
            TrigOrbit.Trigger(Playa)
            OrbitGranter.GrantItem(Playa)
          if(GameNumber = 24):
            OrbitGranter.GrantItem(Playa)
            if(Team1:= Teams[15]):
              if(Play.GetFortCharacter[].IsActive[]):
                 Team1.ChangeClass(Playa)
          if(GameNumber=28):
              SnapeGranter.GrantItem(Playa)
              if(CL:= Teams[0]):
                if(Play.GetFortCharacter[].IsActive[]):
                  CL.ChangeClass(Playa)
          if(GameNumber=38):
             OnePumpGranter.GrantItem(Play)
                if(Playu:= Play.GetFortCharacter[]):
                  Set:= Playu.DamagedEvent().Subscribe(Knockback)


          if(GameNumber=39):
                       AimbotGranter.GrantItem(Play)


    }
    Starty()<suspends>:void=
    {
     set Games = {38,38,39,39,40,40,36,36,29,29,37,37,31,31,1,2,3,5,6,7,8,9,10,11,12,13,17,18,19,20,22,1,2,3,5,6,7,8,9,10,11,12,13,17,18,19,20,22,23,24,24,23,15,15,26,26,28,28,27,27,30,30,14,14,32,32,33,33,34,34,21,21}


      Loadstuff.Play()
     if(EndCheck=1):
      set Ary = array{}
      set Breaknum = 0
      set EndCheck=0
         EnderTimer.Start()
         Barsy.Disable()
         DamageCars.Disable()
          Print("starty")
    AllPlayers:=GetPlayspace().GetPlayers()
                           for(L:AllPlayers):
                            if(L.IsActive[]):
                             if(PlayerStatsMap[L]):
                               Print("stats")
                             else:

                                  if(set PlayerStatsMap[L]=  player_stats{}):

    if(AllPlayers.Length>1):
         Print("{AllPlayers.Length}")
            for(X:AllPlayers):
                if(set PlayerChoice[X]=-1):
                  if(Can:= PlayerCancels[X]):
                     Can.Cancel()
                  if(Can:= PlayerCancels2[X]):
                      Can.Cancel()
                  if(Can:= PlayerCancels3[X]):
                        Can.Cancel()
                  if(YU:= X.GetFortCharacter[]):
                   Set:= YU.EliminatedEvent().Subscribe(PlayerelimedGG)

                    if(set PlayerCancels[X]= Set):

         for(X:AllPlayers):
                 spawn:
                  PutCode(X)

             XP.Award(X)
                if(O:= X.GetFortCharacter[]):
                    O.Show()
             StartTimer.Reset(X)
             StartTimer.Start(X)
             set  PlayersTeam= PlayersTeam + array{X}


           if(set PlayerPumpElims[X]=0 ):
            if(set PlayerGGElims[X]=0 ):
           if(set  LastXPosition[X]=0.0 ):
             if(set  LastYPosition[X]=0.0 ):
              if(set Knocknum[X]=0):
                if(set Knocknummove[X]=0):
              if(X.GetFortCharacter[].IsActive[]):
                if(set  PlayerAlive[X]=1):
      var RemArr:[]int = array{}
        for(Y:=0..2):
           Print("weird")
           Randy:= GetRandomInt(0,Games.Length-1)
              if(Numy:= Games[Randy]):
                if (NewArray := Games.RemoveElement[Randy]):
                  set Games= NewArray
                     var track:int = 0
                       for(R:NewArray):
                         if(R=Numy):
                          if (NewArray2 := Games.RemoveElement[track]):

                              set Games= NewArray2
                        set track+=1


                   set Ary = Ary + array{Numy}
                   Print("canput")
      Sleep(0.4)
      spawn:
        PutCanvas(Ary)
      spawn:
        PutDraw()


    }

    OnBegin<override>()<suspends>:void=

    {


      Runnerswin.AgentEntersEvent.Subscribe(Playerfinish2)
      GetPlayspace().PlayerAddedEvent().Subscribe(Added)
      GetPlayspace().PlayerRemovedEvent().Subscribe(Removed)
      SniperTimer.SuccessEvent.Subscribe(Playerfinish3)
      EnderTimer.SuccessEvent.Subscribe(Playerfinishdraw)
      SpectateMut.AgentEntersEvent.Subscribe(PlayerSpec)
      SpectateMut2.AgentEntersEvent.Subscribe(PlayerSpec)
      GlassWin.AgentEntersEvent.Subscribe(Finish)
       AllPlayers:=GetPlayspace().GetPlayers()
             for(I:AllPlayers):

           if(AllPlayers.Length>0):
            spawn:
             Starty()
           else:
            WaitTimer.Start()
             if(Class:= Teams[11]):
              for(Z:AllPlayers):
               if(Z.GetFortCharacter[].IsActive[]):
                Class.ChangeClass(Z)
              loop:
                Sleep(1.0)
                AllPlayers2:=GetPlayspace().GetPlayers()
                if(AllPlayers2.Length>1):
                  spawn:
                   Starty()
                if(AllPlayers2.Length>1):
                  WaitTimer.Disable()
                if(AllPlayers2.Length>1):
                  break


   }
