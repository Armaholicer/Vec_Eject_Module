nul = [] execVM "functions\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_2\pilot.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_2\passenger.sqf";
}