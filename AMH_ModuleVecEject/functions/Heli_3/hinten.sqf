_dir = getDir FhzOfPlayer;
_dirp = _dir+180;

if ((FhzOfPlayer doorPhase "Door_Rear_Source") == 0) then
{
	FhzOfPlayer animateDoor ["Door_Rear_Source",1,false];
	sleep 1.5;
};

player allowDamage false;
player action ["Eject",FhzOfPlayer];
player attachTo [FhzOfPlayer, [0,-4,-2.5]];
player setDir _dirp;
player switchmove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSrasWrflDnon_getOutLow";

sleep 0.526;
detach player;
player allowDamage true;

