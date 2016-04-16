_Vec = _this select 0;


	
if (_Vec isKindof "Helicopter") then
{
	if (_Vec isKindof "B_Heli_Transport_01_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_1\Heli_1_check.sqf"; //BLUFOR - Ghost Hawk - Heli 1
	};

	if (_Vec isKindof "B_Heli_Transport_01_camo_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_1\Heli_1_check.sqf"; // BLUFOR - Ghost Hawk (Camo) - Heli 1
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (armed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_black_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (black; armed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_unarmed_green_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (unarmed) - Heli 3
	};
	
	if (_Vec isKindof "B_Heli_Transport_03_unarmed_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_3\Heli_3_check.sqf"; // BLUFOR - Huron (black; unarmed) - Heli 3
	};
	
	if (_Vec isKindof "I_Heli_Transport_02_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_2\Heli_2_check.sqf"; // GUER - Mohawk - Heli 2
	};
	
	if (_Vec isKindof "O_Heli_Attack_02_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_4\Heli_4_check.sqf"; // OPFOR - Kajman - Heli 4
	};
	
	if (_Vec isKindof "O_Heli_Attack_02_black_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_4\Heli_4_check.sqf"; // OPFOR - Kajman - Heli 4
	};
	
	if ((_Vec isKindof "O_Heli_Transport_04_covered_F") OR (_Vec isKindof "O_Heli_Transport_04_covered_black_F")) then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_5\Heli_5_check.sqf"; // OPFOR - Taru - Heli 5
	};
	
	if ((_Vec isKindof "O_Heli_Transport_04_medevac_F") OR (_Vec isKindof "O_Heli_Transport_04_medevac_black_F")) then
	{
		[_Vec] execVM "Vehicle_Eject\Heli_5_Med\Heli_5_check.sqf"; // OPFOR - Taru (Black) - Heli 5
	};
	
};

;;//if (_Vec isKindOf "LandVehicle") then
{
	if (_Vec isKindOf "B_MRAP_01_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Car\Car_check.sqf"; // BLUFOR - Hunter (unarmed) - Car	
	};
	
	if (_Vec isKindOf "I_MRAP_03_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Car\Car_check.sqf"; // GUER - Strider (unarmed) - Car	
	};
	
	if (_Vec isKindOf "O_MRAP_02_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Car\Ifrit\Car_check_ifrit.sqf"; // OPFOR - IFRIT (unarmed) - Car	
	};
	
	if (_Vec isKindOf "O_MRAP_02_hmg_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Car\Ifrit\Car_check_ifrit.sqf"; // OPFOR - IFRIT (HMG) - Car	
	};
	
	if (_Vec isKindOf "O_MRAP_02_gmg_F") then
	{
		[_Vec] execVM "Vehicle_Eject\Car\Ifrit\Car_check_ifrit.sqf"; // OPFOR - IFRIT (GMG) - Car	
	};
	


};
