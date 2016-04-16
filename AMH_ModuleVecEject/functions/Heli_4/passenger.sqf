IDHELI_R = player addAction ["<t color='#FF0911'>Rechts absitzen", "functions\Heli_4\rechts.sqf"];
IDHELI_L = player addAction ["<t color='#FF0911'>Links absitzen", "functions\Heli_4\links.sqf"];
player removeaction IDHELI_DOORR;
player removeaction IDHELI_DOORL;
nul = [] execVM "functions\check.sqf";