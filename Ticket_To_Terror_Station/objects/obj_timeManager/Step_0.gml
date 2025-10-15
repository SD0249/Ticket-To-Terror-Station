// Decrease time until monster
if (timeUntilMonster > 0)
{
    timeUntilMonster--;
    if (timeUntilMonster <= 0)
    {
        timeUntilMonster = 0;
        // Call something to start the monster sequence instead of this,
        //    probably set alarm[1] and have that go off when monster
        //    leaves, causing player to die or complete that level
    }
}