_dir = getDir FhzOfPlayer;
_dirp = _dir+270;

if ((FhzOfPlayer doorPhase "Door_Back_L") == 0) then
{
	FhzOfPlayer animateDoor ["Door_Back_L",1,false];
	sleep 1.1;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [-1,4.5,-2.3]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;