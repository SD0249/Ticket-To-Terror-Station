tasksCount = 0;

dayTracker = 1;

monsterTaskDone = false; // do not know how i am doing this part yet 

puddleCount = 0;

sanity = 100;
sanityMax = 100;

startDay = true;

reset = false;

NextDay = function() {
    dayTracker++;
    startDay = true;
    reset = true;
}

// Run this function at the end of each day 
IncompleteTasks = function() {
   sanity -= tasksCount * 10;
}

// Called when a quick response task, such as a phone call, is missed
MissedTask = function() {
    sanity -= 10;
    // maybe check for 0 or less sanity and call function that
    //    goes to game over (went insane) screen if true
}