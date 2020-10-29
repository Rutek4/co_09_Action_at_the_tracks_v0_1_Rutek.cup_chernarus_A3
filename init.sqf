if (isServer) then {

	{ [_x, 1] remoteExecCall ["rtk_fnc_hideMarker", 2]; } forEach [
	 'Marker HQ',
	'Marker Squad 1',
	'Marker Squad 2',
	'Marker Squad 3',
	'Marker ENY Ambush',
	'Suppress',
	'SBF',
	'AOA'];

	["AI"] call rtk_fnc_cacheLayer;
	{ _x hideobjectglobal true;	} forEach getMissionLayerEntities "Camp" # 0;

	allReady = false;
	publicVariable "allReady";
	readyCount = 0;
	"playerReady" addPublicVariableEventHandler {
		readyCount = (readyCount + 1);
		if (readyCount == count (call BIS_fnc_listPlayers) && !allReady) then {
			allReady = true; 
			publicVariable "allReady";
			[] execVM "scripts\animatedBriefing\animate.sqf";
		};
	};

	ace_cookoff_enable = false;
	ace_cookoff_enableAmmoCookoff = false;
	ace_cookoff_ammoCookoffDuration = 0;
	setViewDistance 1000;
	{ _x setDamage 0.95; } forEach nearestObjects [(getMarkerPos "AO_marker"), ["Land_LampStreet_F"], 2000];

	{
		_x setSkill ["aimingAccuracy",(0.25 + (random 0.1))];
		_x setSkill ["aimingShake",(0.25 + (random 0.1))];
		_x setSkill ["spotDistance",0.35];
		_x setSkill ["spotTime",0.3];
		_x setSkill ["courage",(0.5 + (random 0.15))];
		_x setSkill ["commanding",0.25];
		_x setSkill ["aimingSpeed",0.15];
		_x setSkill ["general",0.15];
		_x setSkill ["endurance",0.25];
		_x setSkill ["reloadSpeed",(0.25 + (random 0.2))];
	} forEach allUnits; // easy

	teamNamePlayer = "US Army";
	sidePlayer = WEST;
	teamNameAi = "ChDKZ";
	sideAi = EAST;
	countPlayersStart = count playableUnits;
	countAiStart = ({alive _x && side _x == sideAi} count allUnits);
	isMissionEnd = false;

	[] spawn {
		while {true} do {
			countPlayersCurrent = count playableUnits;
			countAiCurrent = {alive _x && side _x == sideAi} count allUnits;

			//if (countPlayersCurrent <= 2 || 
			if (isMissionEnd) exitWith {
				[teamNamePlayer, sidePlayer, countPlayersStart, countPlayersCurrent, teamNameAi, sideAi, countAiStart, countAiCurrent] call rtk_fnc_endMissionEvent;
			};

			uisleep (15);
		};
	};
};

if (!isDedicated) then {

	enableEnvironment false;
	enableEngineArtillery false;
	enableRadio false;
	0 fadeRadio 0; 
	enableSaving [false, false];
	// enableSentences false;
	player playAction "PlayerCrouch";
	player addRating 1000000;
	player setVariable ["BIS_noCoreConversations", true];
	[player, currentWeapon player, currentMuzzle player] call ace_safemode_fnc_lockSafety;
	setViewDistance 1000;

	"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5, 0.5, 0.5, 0.0],[1.5, 1.5, 1.5, 0.5],[-0.03, 0.27, 0.3, -0.19]];
	"colorCorrections" ppEffectCommit 1; 
	"colorCorrections" ppEffectEnable true;

	["Start"] execVM "scripts\animatedBriefing\intro.sqf";
	[] execVM "scripts\briefing.sqf";
	// [] execVM "scripts\tabMySquad.sqf";
	["AO_marker"] execVM "scripts\ao_marker.sqf";
	
	["endScreen", {_this execVM "scripts\endscreen\endScreen.sqf"}] call CBA_fnc_addEventHandler;
};