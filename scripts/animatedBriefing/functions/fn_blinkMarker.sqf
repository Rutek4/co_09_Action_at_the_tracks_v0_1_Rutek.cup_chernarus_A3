// Rutek 2020

params['_layer','_duration','_count'];

{
	[_x, _duration, _count] call BIS_fnc_blinkMarker;
} forEach (getMissionLayerEntities _layer) # 1;