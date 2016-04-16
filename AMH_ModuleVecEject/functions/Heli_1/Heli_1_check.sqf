nul = [] execVM "functions\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_1\pilot.sqf";
};

if (player != _driver) then
{
	[FhzOfPlayer] execVM "functions\Heli_1\passenger.sqf";
}