_selector = _this select 0;

if (_selector == 1) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_All.sqf";
};

if (_selector == 2) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_BLUFOR.sqf";
};

if (_selector == 3) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_OPFOR.sqf";
};

if (_selector == 4) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_GUER.sqf";
};

if (_selector == 5) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_BLUGUER.sqf";
};

if (_selector == 6) then
{
	nul = [] execVM "functions\Inits\Vehicle_Init_OPFGUER.sqf";
};