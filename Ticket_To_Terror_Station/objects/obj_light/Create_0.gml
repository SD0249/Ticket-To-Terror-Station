// Inherit the parent event
event_inherited();
// change sprite manually
image_speed = 0;

image_index = 0;

canBeFixed = false; // only when no light buld

Interact() {
    if (canBeFixed) {
        //if (inventoryItem == obj_lightBulb)
        image_index = 0;
        
    }
    // if player has light buld 
    // light is fixed
    // when sprite mode is 0 lights on 
    // when sprite mose is 1 lights are off 
}

