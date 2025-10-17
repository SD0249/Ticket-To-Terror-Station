// Inherit the parent event
event_inherited();

isLocked = false;

Interact = function (_pickUp) 
{
    
    if(!isLocked && _pickUp != obj_ladder) 
	{
        // change scene to inside building 
        playerRef.GoThroughDoor();
		audio_play_sound(snd_door_creak, 0, false);
    }
    else 
	{
		audio_play_sound(snd_failed_interaction, 0, false);
    }
}

LockDoor = function()
{
    isLocked = true;
    
	audio_play_sound(snd_door_lock, 0, false);
}

