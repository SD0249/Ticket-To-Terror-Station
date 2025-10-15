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
        //audio_play_sound()
    }
}

LockDoor = function(){
    isLocked = true;
    
    // play locking sound effect
    audio_play_sound(snd_door_locked, 0, false);
}

