// Rutek 2020

params ['_group'];

{
    _x enablesimulationglobal true;
    _x hideobjectglobal false;
    _x enableAI "TARGET";
    _x enableAI "AUTOTARGET";
    _x enableAI "MOVE";
    _x enableAI "ANIM";
    _x enableAI "FSM";

    private _veh = objectParent _x;
    if (!isNull _veh) then {
    	_veh enablesimulationglobal true;
    	_veh hideobjectglobal false;
    };
    
    private _unitFeatures = _x getVariable "unitFeatures";
    if (!isNil str _unitFeatures) then {
    	[_x, _unitFeatures # 0, _unitFeatures # 1] call rtk_fnc_disableAIUnit;
	};
} forEach (units _group);