// Inherit the parent event
event_inherited();
// change sprite manually
image_speed = 0;

image_index = 0;

canBeFixed = false; // only when no light buld

Interact = function (_pickUp)  {
    
    if (canBeFixed) {
        // carrying light bulb
        if (_pickUp == obj_lightBulb) { 
            // fixing light bulb
            image_index = 0;
            obj_breaker.lightsBroken--;
            canBeFixed = false;
            
            // checking if task complete 
            if(obj_breaker.lightsBroken == 0)
            {
                taskManager.tasksCount--;
                obj_breaker.SwitchLights(); // turn lights on to indicate task complete
            }
        }
    }
}

