// Rutek 2020

params ["_unit", "_area"];

_unit setVariable ["rtk_suppressiveFire", true];
_unit setBehaviour "COMBAT";

private _fireMode = currentWeaponMode _unit;
private _weaponModes = (getArray (configFile >> "CfgWeapons" >> (currentWeapon _unit) >> "modes"));
_fireMode = switch (true) do {
    case ("FullAuto" in _weaponModes): {
        "FullAuto"
    };
    case ("close" in _weaponModes): {
        "close"
    };
    case ("medium" in _weaponModes): {
        "medium"
    };
    default {
        currentWeaponMode _unit
    };
};
// private _targetClass = "Land_WoodenBox_02_F";
// private _targetClass = switch (true) do {
//     case ([side _unit, west] call BIS_fnc_sideIsEnemy): {
//         "CBA_O_InvisibleTarget"
//     };
//     case ([side _unit, east] call BIS_fnc_sideIsEnemy): {
//         "CBA_B_InvisibleTarget"
//     };
//     case ([side _unit, independent] call BIS_fnc_sideIsEnemy): {
//         "CBA_I_InvisibleTarget"
//     };
//     default {
//         "CBA_B_InvisibleTarget"
//     };
// // };
// private _target = _targetClass createVehicleLocal [0,0,0];
private _target = "CBA_O_InvisibleTarget" createVehicleLocal [0,0,0];
_target allowdamage false;

private _reloadEH = _unit addEventHandler ["Reloaded", {
    private _mag = _this # 4 # 0;
    private _unit = _this # 0;
    _unit addMagazine _mag;
}];

[_unit, _fireMode, _area, _target] spawn {
    params ["_unit","_fireMode", "_area", "_target"];
    // hint 'suppress start';
    while {true} do {
        private _enemies = (allUnits inAreaArray _area) select {(alive _x || lifeState _x != "Incapacitated") && side _x == WEST};
        if (!alive _unit || lifeState _unit == "Incapacitated" || count _enemies == 0) exitWith {
            // hint "no targets";
        };

        // hint 'suppressING';
        private _randomTarget = selectRandom _enemies;
        private _randomPos = [[[getPosATL _randomTarget, 5]],[]] call BIS_fnc_randomPos;
        _target setposATL [_randomPos # 0, _randomPos # 1, 2 + random 1];
        _unit reveal [_target, 4];
        _unit doWatch _target;
        _unit doTarget _target;

        sleep 0.5;

        private _burst = 0;
        while {_burst < 5 + random 20} do {
            _unit forceWeaponFire [currentWeapon _unit, _fireMode];
            sleep 0.1;
            _burst = _burst + 1;
        };
        sleep 0.5 + random 1;
        [_unit] join grpnull; 
    };

    // hint 'suppress end';
    deleteVehicle _target;
    _unit setVariable ["rtk_suppressiveFire", false];
    _unit doWatch objNull;
    _unit removeEventHandler ["Reloaded", 0];
};