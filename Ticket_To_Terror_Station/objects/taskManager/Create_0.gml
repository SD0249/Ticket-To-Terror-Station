dailyTasks = ds_list_create();

monsterTaskDone = fasle; // do not know how i am doing this part yet 

playerSanity = 100; // temporary will be place in either player or some manager

// set up for day 1
Day1 = function() {
    
    // ==== temporay use as reference when setting up rest of things ====
    // add daily tasks and mark task as not done
    ds_list_add(dailyTasks, obj_trashCan);
    obj_trashCan.isDone = false;
    
    // --- for trash would need to spawn random trash on floor ---
    // --- for water spigot need to select random pipes to break ---
    
}

Day2 = function() {
    
    // ==== temporay use as reference when setting up rest of things ====
    // add daily tasks and mark task as not done
    ds_list_add(dailyTasks, obj_trashCan);
    obj_trashCan.isDone = false;
    
}

Day3 = function() {
    
    // ==== temporay use as reference when setting up rest of things ====
    // add daily tasks and mark task as not done
    ds_list_add(dailyTasks, obj_trashCan);
    obj_trashCan.isDone = false;
    
}

Day4 = function() {
    
    // ==== temporay use as reference when setting up rest of things ====
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