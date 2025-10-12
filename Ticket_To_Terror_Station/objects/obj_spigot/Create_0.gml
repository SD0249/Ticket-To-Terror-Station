// Inherit the parent event
event_inherited();

waterOn = false;

brokenPipes = 0; // changed in pipes

Interact = function (_pickUp) {
    
    // water can only be turn off and on when all pipes are fixed 
    if (brokenPipes == 0 ) {
        
        waterOn = !waterOn;
        
        with(obj_water){
            id.visible = obj_spigot.waterOn;
        }
    }
        
}