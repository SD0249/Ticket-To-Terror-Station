// Inherit the parent event
event_inherited();

waterOn = false;

pipes = [] // place pipe references in here

brokenPipes = 0; // number of broken pipes in scene

Interact() {
    
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

