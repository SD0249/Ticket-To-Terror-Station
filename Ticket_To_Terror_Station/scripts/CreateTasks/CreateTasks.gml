// Create trash task 
function Trash()
{
    var trashCanID;
    
    with (obj_trashCan) {
        ds_list_add(taskManager.dailyTasks, id);
        id.isDone = false;
        trashCanID = id;
    }
    
    // create trash in scene at loaction 
    var posX = 10;
    var posY = 10;
    var posZ = 1;
    var trashID = instance_create_layer(posX, posY, "Instances", obj_trash);
    
    // add trash to list 
    ds_list_add(trashCanID.trash, trashID);
    
    
}

function Spigot()
{
    var spigotID;
    
    with (obj_spigot) {
        ds_list_add(taskManager.dailyTasks, id);
        id.isDone = false;
        spigotID = id;
    }
    
    // make a random number of pipes broken
    // 1 to 4 pipes will be broken
    for(var i = 0; i < 4; i++)
    {
        var rng = irandom(ds_list_size(spigotID.pipesInstances)-1);
        
        ds_list_find_value(spigotID.pipesInstances, rng).isBroken = true;
    }
    
    
}