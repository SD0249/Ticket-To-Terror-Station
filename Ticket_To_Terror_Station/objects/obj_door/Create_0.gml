// Inherit the parent event
event_inherited();

isLocked = false;

Interact = function (_pickUp)  {
    
    if(!isLocked) {
        // change scene to inside building 
    }
    else {
        // play sound effect of player trying to open door
    }
}

LockDoor = function(){
    isLocked = true;
    
    // play locking sound effect
}

