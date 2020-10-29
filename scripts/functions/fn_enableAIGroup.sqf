// Rutek 2020

params ['_group', '_sections'];

private _isString = _sections isEqualType ""; 
{
	private _unit = _x;
	if (_isString) then {
		_unit enableAI _sections;
	} else {
		{
			_unit enableAI _x; 
		} forEach _sections;
	};
	_unit setUnitPos "AUTO";
} foreach (units _group);