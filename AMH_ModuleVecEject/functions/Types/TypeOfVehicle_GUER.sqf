_Vec = _this select 0;


	
if (_Vec isKindof "Helicopter") then
{
	if (_Vec isKindof "I_Heli_Transport_02_F") then
	{
		[_Vec] execVM "functions\Heli_2\Heli_2_check.sqf"; // GUER - Mohawk - Heli 2
	};	
};