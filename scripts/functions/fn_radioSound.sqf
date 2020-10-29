// Rutek 2020

params ['_sound','_callsign','_text'];

playSound _sound;
[_callsign, _text] spawn BIS_fnc_showSubtitle; 