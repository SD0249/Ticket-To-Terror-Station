// Fields
timeUntilMonster = -1;
timeMax = -1;

// Set time until office locks and time until monster comes
function StartGame()
{
    alarm[0] = 1800;            // 30 sec
    timeUntilMonster = 5400;    // 90 sec
    timeMax = 5400;
}