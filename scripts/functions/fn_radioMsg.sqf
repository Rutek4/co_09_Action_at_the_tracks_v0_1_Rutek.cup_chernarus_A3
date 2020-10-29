// Rutek 2020

params ['_source','_sound','_callsign','_text'];

_source say3D _sound;
if (player distance _source <= 6) then {
	[_callsign, _text] spawn BIS_fnc_showSubtitle; 
};