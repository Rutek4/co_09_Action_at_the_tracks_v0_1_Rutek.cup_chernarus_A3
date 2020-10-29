params ['_group'];
{
    _x enablesimulationglobal false;
    _x hideobjectglobal true;
    _x disableAI "TARGET";
    _x disableAI "AUTOTARGET";
    _x disableAI "MOVE";
    _x disableAI "ANIM";
    _x disableAI "FSM";

    private _veh = objectParent _x;
    if (!isNull _veh) then {
    	_veh enablesimulationglobal false;
    	_veh hideobjectglobal true;
    };
} forEach (units _group);