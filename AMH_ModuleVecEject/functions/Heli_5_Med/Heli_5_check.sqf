nul = [] execVM "functions\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_5_Med\pilot.sqf";
	[FhzOfPlayer] execVM "functions\Heli_5_Med\cargo_ramp.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_5_Med\passenger.sqf";
}