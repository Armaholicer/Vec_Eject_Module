_logic = param [0,objNull,[objNull]];
units = param [1,[],[[]]];
_activated = param [2,true,[true]]; 

if (_activated) then 
{
	_VecSelector = _logic getVariable "Selector"; 
	hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
	[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
};

true
