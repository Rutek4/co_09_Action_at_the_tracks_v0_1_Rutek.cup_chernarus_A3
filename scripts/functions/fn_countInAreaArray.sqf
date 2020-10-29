// Rutek 2020

params ['_area', '_side'];

{(alive _x || lifeState _x != "Incapacitated") && side _x == _side} count (allUnits inAreaArray _area);