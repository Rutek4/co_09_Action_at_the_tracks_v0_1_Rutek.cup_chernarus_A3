// Rutek 2020

private _eq = getUnitLoadout player;
sleep 1;
player setUnitLoadout _eq;
if (local player) then {
	_text = "<t size='0.8' font='LucidaConsoleB'>skopiowano ekwipunek</t>";
	hintSilent parseText _text;
};