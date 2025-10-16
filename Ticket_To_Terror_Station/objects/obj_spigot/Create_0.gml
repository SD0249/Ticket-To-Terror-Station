// Inherit the parent event
event_inherited();

waterOn = false;

brokenPipes = 0; // changed in pipes

Interact = function (_pickUp) {
    
    // water can only be turn off and on when all pipes are fixed 
    if (brokenPipes == 0 ) {
        
        waterOn = !waterOn;
        
        with(obj_water)
		{
            id.visible = obj_spigot.waterOn;
        }
		
		if (waterOn)
		{
			audio_play_sound(snd_running_tap, 0, true);
		}
		else if (!waterOn && audio_is_playing(snd_running_tap))
		{
			audio_stop_sound(snd_running_tap);
		}
    }
        
}