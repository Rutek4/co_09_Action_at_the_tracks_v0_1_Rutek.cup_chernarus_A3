// Rutek 2020

params['_layer','_speed','_index'];

{
	[_x, (getMarkerPos format['%1_pos_%2', _x, _index]), _speed] call BIS_fnc_moveMarker;
} forEach (getMissionLayerEntities _layer) # 1;	