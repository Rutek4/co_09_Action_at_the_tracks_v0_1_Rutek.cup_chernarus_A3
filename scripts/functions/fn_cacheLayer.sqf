// Rutek 2020

params ['_preset'];

{
    _x enablesimulationglobal false;
    _x hideobjectglobal true;
    _x disableAI "TARGET";
    _x disableAI "AUTOTARGET";
    _x disableAI "MOVE";
    _x disableAI "ANIM";
    _x disableAI "FSM";
} forEach getMissionLayerEntities _preset # 0;