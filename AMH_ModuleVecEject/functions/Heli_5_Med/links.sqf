_dir = getDir FhzOfPlayer;
_dirp = _dir+270;

if ((FhzOfPlayer doorPhase "Door_4_source") == 0) then
{
	FhzOfPlayer animateDoor ["Door_4_source",1,false];
	sleep 2.1;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [-1.3,1.3,-1.7]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;