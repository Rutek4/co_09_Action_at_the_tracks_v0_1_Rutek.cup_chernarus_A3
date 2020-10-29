// Rutek 2020

params ['_unit'];

if (!alive _unit) exitWith {};
private _weapon = currentWeapon _unit;
private _unitPos = getPosATL _unit;
private _weaponPos = createVehicle ["Weapon_Empty", [(_unitPos # 0 + 0.25), (_unitPos # 1 + 0.25), (_unitPos # 2)], [], 0, "CAN_COLLIDE"];
_unit action ["PutWeapon", _weaponPos, _weapon];

[{ currentWeapon (_this # 0) == "" }, 
	{ [(_this # 0), true] call ACE_captives_fnc_setSurrendered;}, [_unit] 
] call CBA_fnc_waitUntilAndExecute;