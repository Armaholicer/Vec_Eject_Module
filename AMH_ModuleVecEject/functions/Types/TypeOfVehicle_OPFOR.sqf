_Vec = _this select 0;


	
if (_Vec isKindof "Helicopter") then
{
	if (_Vec isKindof "O_Heli_Attack_02_F") then
	{
		[_Vec] execVM "functions\Heli_4\Heli_4_check.sqf"; // OPFOR - Kajman - Heli 4
	};
	
	if (_Vec isKindof "O_Heli_Attack_02_black_F") then
	{
		[_Vec] execVM "functions\Heli_4\Heli_4_check.sqf"; // OPFOR - Kajman - Heli 4
	};
	
	if ((_Vec isKindof "O_Heli_Transport_04_covered_F") OR (_Vec isKindof "O_Heli_Transport_04_covered_black_F")) then
	{
		[_Vec] execVM "functions\Heli_5\Heli_5_check.sqf"; // OPFOR - Taru - Heli 5
	};
	
	if ((_Vec isKindof "O_Heli_Transport_04_medevac_F") OR (_Vec isKindof "O_Heli_Transport_04_medevac_black_F")) then
	{
		[_Vec] execVM "functions\Heli_5_Med\Heli_5_check.sqf"; // OPFOR - Taru (Black) - Heli 5
	};
	
};