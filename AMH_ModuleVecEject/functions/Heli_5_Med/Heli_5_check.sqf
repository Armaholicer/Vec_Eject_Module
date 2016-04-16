nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_5_Med\pilot.sqf";
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_5_Med\cargo_ramp.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_5_Med\passenger.sqf";
}