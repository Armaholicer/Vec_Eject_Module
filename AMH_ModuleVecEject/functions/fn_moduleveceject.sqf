_mode = param [0,""[""]];
_input = param [1,[],[[]]];

swich _mode do
{
	case "init":
	{
		_logic = _input param [0,objNull,[objNull]];
		_isActivated = _input param [1,true,[true]];
		_isCuratorPlaced = _input param [2,false,[false]];

		_VecSelector = _logic getVariable "Selector"; 
		hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
		[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
	};
	
	case "attributesChanged3DEN":
	{
		_logic = _input param [0,objNull,[objNull]]; 
		
		_VecSelector = _logic getVariable "Selector"; 
		hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
		[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
	};
	
	case "registeredToWorld3DEN": 
	{
		_VecSelector = _logic getVariable "Selector"; 
		hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
		[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
	};
	
	case "unregstieredFromWorld3DEN":
	{
		_VecSelector = _logic getVariable "Selector"; 
		hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
		[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
	};
	
	case "connectionChange3DEN":
	{
		_VecSelector = _logic getVariable "Selector"; 
		hint format "Vehicle Eject Module initialised for %1", _VecSelector]; 
		[_VecSelector] execVM "Vehicle_Eject\Side_Selector.sqf";
	};
};
true