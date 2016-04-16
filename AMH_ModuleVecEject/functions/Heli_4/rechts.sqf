_dir = getDir FhzOfPlayer;
_dirp = _dir+90;

if ((FhzOfPlayer doorPhase "Door_R") == 0) then
{
	FhzOfPlayer animateDoor ["Door_R",1,false];
	sleep 1.4;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [1,1.4,-2.25]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;

