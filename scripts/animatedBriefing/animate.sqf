private _timeline = [
	[
		1,
		{
			[markerSize "AO_marker",  markerPos "AO_marker", 5] remoteExec ["BIS_fnc_zoomOnArea", 0];
			['N_1','Narrator','Aktualna sytuacja.'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		5,
		{
			["Platoon AOA", 1] remoteExecCall ["rtk_fnc_hideMarker", 2];
			['N_5','Narrator','Wasz Pluton przemieszcza się lasami przy północnej stronie AO Warrior.'] remoteExecCall ["rtk_fnc_radioSound", 0];
			["Marker Platoon 2", 20, 1] remoteExecCall ["rtk_fnc_moveMarker", 2];
		}
	],
	[
		11,
		{
			["Marker Platoon 2", 1] remoteExecCall ["rtk_fnc_hideMarker", 2];
			['N_6','Narrator','Wasza drużyna przemieszcza się jako ostatnia w formacji plutonu 100-200m za 2 drużyną.'] remoteExecCall ["rtk_fnc_radioSound", 0];
			["Marker Squad 1", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			["Marker Squad 2", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			["Marker Squad 3", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			["Marker HQ", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
		}
	],
	[
		12,
		{
			["Marker Squad 1", 20, 1] remoteExecCall ["rtk_fnc_moveMarker", 2];
			["Marker Squad 2", 20, 1] remoteExecCall ["rtk_fnc_moveMarker", 2];
			["Marker Squad 3", 20, 1] remoteExecCall ["rtk_fnc_moveMarker", 2];
			["Marker HQ", 20, 1] remoteExecCall ["rtk_fnc_moveMarker", 2];
		}
	],
	[
		20,
		{
			['N_7','Narrator','W pewnym momencie 1 drużyna w trakcie przemarszu melduje o prawdopodobnym kontakcie wzrokowym z przeciwnikiem.'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		24,
		{
			['N_SL1_1','ALPHA-2-1','6 tu 1, prawdopodobonie mamy jakiś ruch przed nami, odległość większa niż 100m, odbiór'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		31,
		{
			['N_8','Narrator','Zaraz po tym komunikacie nastąpił wybuch w okolicy 1 drużyny, a zaraz za nim dłuższe serie z karabinków AK.'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		37,
		{
			['N_SL1_3','ALPHA-2-1','Tutaj 1, mamy przeciwnika około 100-150m na północ od nas, conajmniej 5 ludzi, kałasznikowy i PKM, odbiór.'] remoteExecCall ["rtk_fnc_radioSound", 0];
			["Marker ENY Ambush", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			["Marker Squad 1", 10, 2] remoteExecCall ["rtk_fnc_moveMarker", 2];
		}
	],
	[
		45,
		{
			["Suppress", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			['N_PL_1','ALPHA-2-6','1 tu 6, przyjąłem.'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		48,
		{
			['N_PL_2','ALPHA-2-6','2 tu 6, przemieść się bliżej 1 i udziel im wsparcia, break.'] remoteExecCall ["rtk_fnc_radioSound", 0];
		}
	],
	[
		52,
		{
			['SL2_5','ALPHA-2-2','2 przyjął.'] remoteExecCall ["rtk_fnc_radioSound", 0];
			["Marker Squad 2", 5, 2] remoteExecCall ["rtk_fnc_moveMarker", 2];
			["Marker HQ", 10, 2] remoteExecCall ["rtk_fnc_moveMarker", 2];
		}
	],
	[
		54,
		{
			['N_PL_3','ALPHA-2-6','3 tu 6, flankuj od północy, docelowo odetnij drogę ucieczki, zajmując budynki przy drodze, odbiór.'] remoteExecCall ["rtk_fnc_radioSound", 0];
			// ["Marker Squad 3", 5, 2] remoteExecCall ["rtk_fnc_moveMarker", 2];
			["SBF", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
		}
	],
	[
		56,
		{
			["AOA", 1] remoteExecCall ["rtk_fnc_showMarker", 2];
			[true, 'task_1', ["1. Oflankować przeciwnika od wschodu.","Zaatakować przeciwnika","Zaatakować przeciwnika"], objNull, 'CREATED', 2, true, 'a', false] call BIS_fnc_taskCreate;
		}
	],
	[
		70,
		{

		}
	]
];

[_timeline, 0, nil, [], [], "", true, { [["End"],"scripts\animatedBriefing\intro.sqf"] remoteExec ["execVM", 0]; isBriefingFinished = true; }] spawn BIS_fnc_AnimatedBriefing;