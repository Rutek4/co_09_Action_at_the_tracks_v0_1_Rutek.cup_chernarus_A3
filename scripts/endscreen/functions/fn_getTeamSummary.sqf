params ["_name", "_side", "_start", "_current"];
private _team = [];

_team pushBack _name;
_team pushBack _side;
_team pushBack _start;
_team pushBack _current;
_team pushBack (_side call rtk_fnc_getDamagedAssets) # 0;
_team pushBack (_side call rtk_fnc_getDamagedAssets) # 1;

_team
