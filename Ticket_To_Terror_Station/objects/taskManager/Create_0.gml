dailyTasks = ds_list_create();

monsterTaskDone = fasle;

playerSanity = 100; // temperary will be place in either player or some manager

// when changing days
// call the task manager and the particular day method 
Day1 = function() {
    
    // add daily tasks and mark task as not done
    ds_list_add(dailyTasks, obj_trashCan);
    obj_trashCan.isDone = false;
    
}

// Run this function at the end of each day 
IncompleteTasks = function() {
    
    for(var i = 0; i < ds_list_size(dailyTasks); i++) {
        
        var task = ds_list_find_value(dailyTasks, i);
        
        // find incomplete task and subtract sanity 
        if(!task.isDone){
            playerSanity -= task.lowerSanity;
            
            // reset task to done 
            task.isDone = true;
        }
    }
}