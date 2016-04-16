nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	while {player == _driver} do 
	{
		if ((FhzOfPlayer doorPhase "Door_4_source") == 0)  then 
		{
			player removeAction IDHELI_DOORL;
			player removeAction IDHELI_DOOROL;
			IDHELI_DOOROL = player addAction ["<t color='#FF0911'>Linke Tür öffnen", "Vehicle_Eject\Heli_5_Med\openl.sqf"];
			while {((FhzOfPlayer doorPhase "Door_4_source") == 0)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if ((FhzOfPlayer doorPhase "Door_4_source") == 1)  then 
		{
			player removeAction IDHELI_DOORL;
			player removeAction IDHELI_DOOROL;
			IDHELI_DOORL = player addAction ["<t color='#FF0911'>Linke Tür schließen", "Vehicle_Eject\Heli_5_Med\close_l.sqf"];
			while {((FhzOfPlayer doorPhase "Door_4_source") == 1)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if ((FhzOfPlayer doorPhase "Door_6_source") == 0)  then 
		{
			player removeAction IDHELI_DOORCCR;
			player removeAction IDHELI_DOOROCR;
			IDHELI_DOOROCR = player addAction ["<t color='#FF0911'>Rampe öffnen", "Vehicle_Eject\Heli_5_Med\open_c.sqf"];
			while {((FhzOfPlayer doorPhase "Door_6_source") == 0)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if ((FhzOfPlayer doorPhase "Door_6_source") == 1)  then 
		{
			player removeAction IDHELI_DOORCCR;
			player removeAction IDHELI_DOOROCR;
			IDHELI_DOORCCR = player addAction ["<t color='#FF0911'>Rampe schließen", "Vehicle_Eject\Heli_5_Med\close_c.sqf"];
			while {((FhzOfPlayer doorPhase "Door_6_source") == 1)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		sleep 1;
	};
	execVM "Vehicle_Eject\check.sqf";
};