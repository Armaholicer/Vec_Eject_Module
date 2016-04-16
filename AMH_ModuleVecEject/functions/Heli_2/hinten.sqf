_dir = getDir FhzOfPlayer;
_dirp = _dir+180;

if ((FhzOfPlayer doorPhase "CargoRamp_Open") == 0) then
{
	FhzOfPlayer animateDoor ["CargoRamp_Open",1,false];
	sleep 5.5;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [0,-4,-3]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;

