// Create trash task 
function TrashTask()
{
    var trashCan = instance_find(obj_trashCan, 0);
    
    // create trash in scene at loaction 
    var posX = 10;
    var posY = 10;
    var posZ = 1;
    var trashID = instance_create_layer(posX, posY, "Instances", obj_trash);
    
    trashCan.trashCount = 1;
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