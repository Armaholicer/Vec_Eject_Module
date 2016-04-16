nul = [] execVM "functions\check.sqf";

_gunner = (gunner FhzOfPlayer);

if (player == _gunner) then
{
	while {player == _gunner} do 
	{
		if (((FhzOfPlayer doorPhase "Door_R") == 0) AND ((FhzOfPlayer doorPhase "Door_L") == 0)) then
		{
			player removeaction IDHELI_DOORO;
			IDHELI_DOORO = player addAction ["<t color='#FF0911'>Türen öffnen", "functions\Heli_4\open.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R") == 0) && ((FhzOfPlayer doorPhase "Door_L") == 0)} do
			{
				//nichts
				execVM "functions\check.sqf";
				sleep 1;
			};
		};
		if (((FhzOfPlayer doorPhase "Door_R") == 1) AND ((FhzOfPlayer doorPhase "Door_L") == 1)) then
		{
			player removeaction IDHELI_DOORC;
			IDHELI_DOORC = player addAction ["<t color='#FF0911'>Türen schließen", "functions\Heli_4\close_all.sqf"];
			while {((FhzOfPlayer doorPhase "Door_R") == 1) && ((FhzOfPlayer doorPhase "Door_L") == 1)} do
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