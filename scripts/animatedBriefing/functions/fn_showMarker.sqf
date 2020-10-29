// Rutek 2020

params['_layer','_duration'];

{
	[_x, _duration, 1] call BIS_fnc_showMarker;
} forEach (getMissionLayerEntities _layer) # 1;