// Rutek 2020

params ['_veh','_group'];

_group leaveVehicle _veh; 
{ 
  unassignVehicle _x; 
  doGetOut _x; 
} forEach units _group;