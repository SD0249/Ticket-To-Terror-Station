dailyTasks = ds_list_create();

monsterTaskDone = false; // do not know how i am doing this part yet 

playerSanity = 100; // temporary will be place in either player or some manager

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
