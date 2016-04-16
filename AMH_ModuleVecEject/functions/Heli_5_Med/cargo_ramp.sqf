nul = [] execVM "functions\check.sqf";

_driver = (driver FhzOfPlayer);
if (player == _driver) then
{
	while {player == _driver} do 
	{
		if ((FhzOfPlayer doorPhase "Door_6_source") == 0)  then 
		{
			player removeAction IDHELI_DOORCCR;
			player removeAction IDHELI_DOOROCR;
			IDHELI_DOOROCR = player addAction ["<t color='#FF0911'>Rampe öffnen", "functions\Heli_5_Med\open_c.sqf"];
			while {((FhzOfPlayer doorPhase "Door_6_source") == 0)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		if ((FhzOfPlayer doorPhase "Door_6_source") == 1)  then 
		{
			player removeAction IDHELI_DOORCCR;
			player removeAction IDHELI_DOOROCR;
			IDHELI_DOORCCR = player addAction ["<t color='#FF0911'>Rampe schließen", "functions\Heli_5_Med\close_c.sqf"];
			while {((FhzOfPlayer doorPhase "Door_6_source") == 1)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		sleep 1;
	};
	execVM "functions\check.sqf";
};