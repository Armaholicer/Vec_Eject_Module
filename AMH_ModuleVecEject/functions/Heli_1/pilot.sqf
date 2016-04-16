nul = [] execVM "Vehicle_Eject\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	while {player == _driver} do 
	{
		if (((FhzOfPlayer doorPhase "Door_R") == 0) AND ((FhzOfPlayer doorPhase "Door_L") == 0)) then
		{
			player removeaction IDHELI_DOOROR;
			player removeaction IDHELI_DOOROL;
			player removeaction IDHELI_DOORO;
			IDHELI_DOORO = player addAction ["<t color='#FF0911'>Türen öffnen", "Vehicle_Eject\Heli_1\open.sqf"];
			IDHELI_DOOROL = player addAction ["<t color='#000000'>Linke Tür öffnen", "Vehicle_Eject\Heli_1\openl.sqf"];
			IDHELI_DOOROR = player addAction ["<t color='#00FF00'>Rechte Tür öffnen", "Vehicle_Eject\Heli_1\openr.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R") == 0) && ((FhzOfPlayer doorPhase "Door_L") == 0)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R") == 1) AND ((FhzOfPlayer doorPhase "Door_L") == 1)) then
		{
			player removeaction IDHELI_DOORC;
			IDHELI_DOORC = player addAction ["<t color='#FF0911'>Türen schließen", "Vehicle_Eject\Heli_1\close_all.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R") == 1) && ((FhzOfPlayer doorPhase "Door_L") == 1)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R") == 1) AND ((FhzOfPlayer doorPhase "Door_L") == 0)) then
		{
			IDHELI_DOORR = player addAction ["<t color='#FF0911'>Rechte Tür schließen", "Vehicle_Eject\Heli_1\close_r.sqf"];			
			while {((FhzOfPlayer doorPhase "Door_R") == 1) && ((FhzOfPlayer doorPhase "Door_L") == 0)} do
			{
				//nichts
				execVM "Vehicle_Eject\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R") == 0) AND ((FhzOfPlayer doorPhase "Door_L") == 1))  then 
		{
			IDHELI_DOORL = player addAction ["<t color='#FF0911'>Linke Tür schließen", "Vehicle_Eject\Heli_1\close_l.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R") == 0) && ((FhzOfPlayer doorPhase "Door_L") == 1)} do
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