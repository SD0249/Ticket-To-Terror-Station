// Inherit the parent event
event_inherited();
// change sprite manually
image_speed = 0;

image_index = 0;

canBeFixed = false; // only when no light buld

Interact = function (_pickUp)  {
    if (canBeFixed) {
        //if (inventoryItem == obj_lightBulb)
        image_index = 0;
        obj_breaker.lightsBroken--;
        
        
        if(obj_breaker.lightsBroken == 0)
        {
            canBeFixed = false;
            isDone = true;
            obj_breaker.SwitchLights();
        }
    }
}

