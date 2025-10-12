// Create trash task 
function TrashTask()
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

function SpigotTask()
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

function LightsTask()
{
   var breakerID;
    
    with (obj_breaker) {
        ds_list_add(taskManager.dailyTasks, id);
        id.isDone = false;
        breakerID = id;
    } 
    
    // break all lights
    for(var i = 0; i < 4; i++)
    {
        // change sprite index to no light buld 
        var currentLight = ds_list_find_value(breakerID.lights, i)
        currentLight.image_index = 1;
        currentLight.canBeFixed = true;
    }
    
    breakerID.SwitchLights();
    breakerID.lightsBroken = 4;
}