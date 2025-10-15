// Fields
timeUntilMonster = -1;
timeMax = -1;

// Set time until office locks and time until monster comes
function StartGame()
{
    alarm[0] = /*3600*/  400;            // 60 sec
    timeUntilMonster = /*7200*/ 600;     // 120 sec
    timeMax = 7200;
}