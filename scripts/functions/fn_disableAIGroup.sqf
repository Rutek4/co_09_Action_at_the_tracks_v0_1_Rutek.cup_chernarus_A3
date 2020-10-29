// Rutek 2020

params ['_group', '_sections'];

private _isString = _sections isEqualType ""; 
{
	private _unit = _x;
	if (_isString) then {
		_unit disableAI _sections;
	} else {
		{
			_unit disableAI _x; 
		} forEach _sections;
	};
	_unit setVariable ["unitFeatures", [_sections, _pos], false];
} foreach (units _group);