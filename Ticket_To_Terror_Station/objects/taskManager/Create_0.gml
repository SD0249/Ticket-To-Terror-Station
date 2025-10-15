tasksCount = 0;

dayTracker = 1;

monsterTaskDone = false; // do not know how i am doing this part yet 

puddleCount = 0;

sanity = 100;
sanityMax = 100;

startDay = true;

reset = false;

restartRoom = function ()
{
    if(reset) {
    // reset office
        if(room == Room_Office) {
            room_restart();
            show_debug_message("apple");
        }
        reset = false;
    }
    
    if(startDay) {
    if(room == Room_Station) {
        
        room_restart()
        
        switch (dayTracker) {
            case 1: 
                Day1(); break;
            case 2: 
                Day2(); break;
            case 3:
                Day3(); break;
            case 4:
                Day4(); break;
            default: break; // game ends
        }
        
        startDay = false;
    }
}
}

NextDay = function() {
    dayTracker++;
    startDay = true;
    reset = true;
}

// Run this function at the end of each day 
IncompleteTasks = function() {
    obj_player.sanity -= tasksCount * 10;
}