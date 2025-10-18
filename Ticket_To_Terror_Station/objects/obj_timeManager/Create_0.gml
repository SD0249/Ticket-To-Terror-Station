// Fields
timeUntilMonster = -1;
timeMax = -1;
locked = false;

// Set time until office locks and time until monster comes
function StartGame()
{
    alarm[0] = 3600
    timeUntilMonster = 7200
    timeMax = 7200;
    locked = false;
}

//function Reset() {
//	timeUntilMonster = timeMax;
//}