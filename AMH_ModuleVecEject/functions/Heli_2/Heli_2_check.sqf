nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_2\pilot.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_2\passenger.sqf";
}