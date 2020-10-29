params ["_teamNamePlayer", "_sidePlayer", "_countPlayersStart", "_countPlayersCurrent", "_teamNameAi", "_sideAi", "_countAiStart", "_countAiCurrent"];

missionEnded = true;
{ _x disableAI "ALL"; } foreach allUnits;
{ _x enableSimulation false; } forEach vehicles;
{
	[objNull, _x] call ace_medical_treatment_fnc_fullHeal;
	_x enableSimulation false;
	removeAllWeapons _x;
} forEach allPlayers;

_teamPlayer = [_teamNamePlayer, _sidePlayer, _countPlayersStart, _countPlayersCurrent] call rtk_fnc_getTeamSummary; 
_teamAi = [_teamNameAi, _sideAi, _countAiStart, _countAiCurrent] call rtk_fnc_getTeamSummary; 
_teams = [_teamPlayer, _teamAi];

["endScreen", [_teams]] call CBA_fnc_globalEvent;