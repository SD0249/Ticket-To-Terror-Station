tasksCount = 0;

dayTracker = 1;

monsterTaskDone = false; // do not know how i am doing this part yet 

playerSanity = 100; // temporary will be place in either player or some manager

// Run this function at the end of each day 
IncompleteTasks = function() {
    playerSanity -= tasksCount * 10;
}