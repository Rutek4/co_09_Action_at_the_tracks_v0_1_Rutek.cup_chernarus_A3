// Rutek 2020

params["_alpha"];

{ 
	if (!(["USER_DEFINED",  _x] call BIS_fnc_inString) && !(["ao_",  _x] call BIS_fnc_inString)) then {
		_x setMarkerAlphaLocal _alpha;
    }; 
} foreach allMapMarkers;