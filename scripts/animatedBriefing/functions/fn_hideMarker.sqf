// Rutek 2020

params['_layer','_duration'];

{
	[_x, _duration] spawn BIS_fnc_hideMarker;
} forEach (getMissionLayerEntities _layer) # 1;