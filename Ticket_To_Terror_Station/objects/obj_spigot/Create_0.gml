// Inherit the parent event
event_inherited();

waterOn = false;


// gather all ids to pipes in scene 
pipesInstances = ds_list_create(); 

with (obj_pipe)
{
    ds_list_add(obj_spigot.pipesInstances, id);
}

brokenPipes = 0; // number of broken pipes in scene

Interact = function (_pickUp)  {
    
    // water can only be turn off and on when all pipes are fixed 
    if (brokenPipes == 0 ) {
        
        if (waterOn) {
            // remove water from floor 
            waterOn = false;
        }
        else {
            // add water to floor 
            waterOn = true;
        }
    }
        
}

