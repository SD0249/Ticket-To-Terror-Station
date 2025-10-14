// Fields
timeUntilMonster = -1;
timeMax = -1;

// Set time until office locks and time until monster comes
function StartGame()
{
    alarm[0] = 3600;            // 60 sec
    timeUntilMonster = 7200;    // 120 sec
    timeMax = 7200;
}