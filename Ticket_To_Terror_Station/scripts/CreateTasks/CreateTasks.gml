// Create trash task 
function TrashTask()
{

    var trashCan = instance_find(obj_trashCan, 0);
    
    var rng = irandom;

    // create trash in scene at loaction 
    // create list of x and y positions 
    var trashPositions = ds_list_create();
    ds_list_add(trashPositions, [(irandom_range(10, 3650)),834]);
    ds_list_add(trashPositions, [(irandom_range(10, 3650)),834]);
    ds_list_add(trashPositions, [(irandom_range(10, 3650)),834]);
    ds_list_add(trashPositions, [(irandom_range(10, 3650)),834]);
    ds_list_add(trashPositions, [(irandom_range(10, 3650)),834]);
    
    // add x and y possitions to each trash instance and print to room
    for (var i = 0; i < ds_list_size(trashPositions); i++)
    {
        var pos = trashPositions[| i];
        var posX = pos[0];
        var posY = pos[1];
        instance_create_layer(posX, posY, "Instances", obj_trash);
        trashCan.trashCount++;
    }
    
    
    // if all trash is removed from list
    // if (ds_list_size(trashCanID.trash) == 0)
    // {
    //    id.isDone = true;
    // }

}

function SpigotTask()
{

    // finds spigot
    var spigot = instance_find(obj_spigot, 0);

    // 33% chance to break each pipe, 
    with (obj_pipe) {
        
        var rng = irandom(2);
        
        // 33% chance to create broken pipe
        if (rng > 0 ) {
            id.isBroken = true;
            spigot.brokenPipes++;
        }
    }
    
        // 1 pipe is guaranteed to be broken 
    if(spigot.brokenPipes == 0) {
        var pipe = instance_find(obj_pipe, 0);
        pipe.isBroken = true;
        spigot.brokenPipes++;
    }
    

    // if all pipes are borken and removed from list
    //if (ds_list_size(spigotID.pipesInstances) == 0)
    //{
    //    id.isDone = true;
    //}

}

function LightsTask()
{
   var breaker = instance_find(obj_breaker, 0);
    

    with (obj_light) {
        id.image_index = 1;
        id.canBeFixed = true;
        breaker.lightsBroken++;
    }
    
    breaker.SwitchLights();

}