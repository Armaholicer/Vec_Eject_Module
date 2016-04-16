nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_1\pilot.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_1\passenger.sqf";
}