_Vec = _this select 0;


	
if (_Vec isKindof "Helicopter") then
{
	if (_Vec isKindof "B_Heli_Transport_01_F") then
	{
		[_Vec] execVM "functions\Heli_1\Heli_1_check.sqf"; //BLUFOR - Ghost Hawk - Heli 1
	};

	if (_Vec isKindof "B_Heli_Transport_01_camo_F") then
	{
		[_Vec] execVM "functions\Heli_1\Heli_1_check.sqf"; // BLUFOR - Ghost Hawk (Camo) - Heli 1
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_F") then
	{
		[_Vec] execVM "functions\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (armed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_black_F") then
	{
		[_Vec] execVM "functions\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (black; armed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_unarmed_green_F") then
	{
		[_Vec] execVM "functions\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (unarmed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_unarmed_F") then
	{
		[_Vec] execVM "functions\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (black; unarmed) - Heli 3
	};
};