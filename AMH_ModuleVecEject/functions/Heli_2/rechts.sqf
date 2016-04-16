_dir = getDir FhzOfPlayer;
_dirp = _dir+90;

if ((FhzOfPlayer doorPhase "Door_Back_R") == 0) then
{
	FhzOfPlayer animateDoor ["Door_Back_R",1,false];
	sleep 1.1;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [1,2.4,-2.3]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;

