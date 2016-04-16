while {vehicle player == player} do
	{
		//nichts
		sleep 1;
	};

if (player in (crew (vehicle player))) then
	{
		FhzOfPlayer = vehicle player;
		[FhzOfPlayer] execVM "Vehicle_Eject\TypeOfVehicle.sqf";
	};

while {player in crew FhzOfPlayer} do
	{
		//nichts
		sleep 1;
	};



execVM "init.sqf";