nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);
_gunner = (gunner FhzOfPlayer);

if (player == _driver) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_4\pilot.sqf";
};

if (player == _gunner) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_4\gunner.sqf";
};

if ((player != _driver) AND (player != _gunner)) then
{
	[FhzOfPlayer] execVM "Vehicle_Eject\Heli_4\passenger.sqf";
}