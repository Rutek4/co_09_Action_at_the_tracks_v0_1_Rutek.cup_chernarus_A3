// Rutek 2020

params ['_unit', '_sections', ['_pos', "AUTO"]];

if (_sections isEqualType "") then {
	_unit disableAI _sections;
} else {
	{
		_unit disableAI _x; 
	} forEach _sections;
};
_unit setUnitPos _pos;
_unit setVariable ["unitFeatures", [_sections, _pos], false];