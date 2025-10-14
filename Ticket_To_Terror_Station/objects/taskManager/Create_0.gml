tasksCount = 0;

dayTracker = 1;

monsterTaskDone = false; // do not know how i am doing this part yet 

puddleCount = 0;

sanity = 100;
sanityMax = 100;

startDay = true;

// Run this function at the end of each day 
IncompleteTasks = function() {
   sanity -= tasksCount * 10;
}