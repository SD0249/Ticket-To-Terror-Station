// Inherit the parent event
event_inherited();

isLocked = false;

Interact = function (_pickUp)  {
    
    if(!isLocked && _pickUp != obj_ladder) {
        // change scene to inside building 
        playerRef.GoThroughDoor();
    }
    else {
        // play sound effect of player trying to open door
    }
}

LockDoor = function(){
    isLocked = true;
    
    // play locking sound effect
}

