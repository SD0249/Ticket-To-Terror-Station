tasksCount = 0;

dayTracker = 1;

monsterTaskDone = false; // do not know how i am doing this part yet 

puddleCount = 0;

// Run this function at the end of each day 
IncompleteTasks = function() {
    obj_player.sanity -= tasksCount * 10;
}