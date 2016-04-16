nul = [] execVM "functions\check.sqf";

_driver = (driver FhzOfPlayer);

if (player == _driver) then
{
	while {player == _driver} do 
	{
		if (((FhzOfPlayer doorPhase "Door_R_Source") == 0) AND ((FhzOfPlayer doorPhase "Door_L_Source") == 0)) then
		{
			player removeaction IDHELI_DOOROR;
			player removeaction IDHELI_DOOROL;
			player removeaction IDHELI_DOORO;
			IDHELI_DOORO = player addAction ["<t color='#FF0911'>Türen öffnen", "functions\Heli_3\open.sqf"];
			IDHELI_DOOROL = player addAction ["<t color='#000000'>Linke Tür öffnen", "functions\Heli_3\openl.sqf"];
			IDHELI_DOOROR = player addAction ["<t color='#00FF00'>Rechte Tür öffnen", "functions\Heli_3\openr.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R_Source") == 0) && ((FhzOfPlayer doorPhase "Door_L_Source") == 0)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R_Source") == 1) AND ((FhzOfPlayer doorPhase "Door_L_Source") == 1)) then
		{
			player removeaction IDHELI_DOORC;
			IDHELI_DOORC = player addAction ["<t color='#FF0911'>Türen schließen", "functions\Heli_3\close_all.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R_Source") == 1) && ((FhzOfPlayer doorPhase "Door_L_Source") == 1)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R_Source") == 1) AND ((FhzOfPlayer doorPhase "Door_L_Source") == 0)) then
		{
			IDHELI_DOORR = player addAction ["<t color='#FF0911'>Rechte Tür schließen", "functions\Heli_3\close_r.sqf"];			
			while {((FhzOfPlayer doorPhase "Door_R_Source") == 1) && ((FhzOfPlayer doorPhase "Door_L_Source") == 0)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R_Source") == 0) AND ((FhzOfPlayer doorPhase "Door_L_Source") == 1))  then 
		{
			IDHELI_DOORL = player addAction ["<t color='#FF0911'>Linke Tür schließen", "functions\Heli_3\close_l.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R_Source") == 0) && ((FhzOfPlayer doorPhase "Door_L_Source") == 1)} do
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