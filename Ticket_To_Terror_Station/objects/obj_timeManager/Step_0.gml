// Decrease time until monster
if (timeUntilMonster > 0)
{
    timeUntilMonster--;
    if (timeUntilMonster <= 0)
    {
        timeUntilMonster = 0;
        
        // spawn the current days monster 
        switch (taskManager.dayTracker) {
            case 1: 
                instance_create_layer(room_width, 834, "Instances", obj_slimeMonster); 
                break;
            case 2: 
                 break;
            case 3:
                break;
            case 4:
                break;
            default: break; // game end
        }
    }
}