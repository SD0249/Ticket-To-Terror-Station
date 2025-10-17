event_inherited();

lowerSanity = 10;

lightsBroken = 0;

lightsOn = false;

delay = 0;
delay_duration = 60; // 1-second delay
reduceDelay = false;
notStart = false;

// turn lights off and on
SwitchLights = function(on) 
{
	
    obj_lightRender.lightsOn = on;
	
	if (obj_lightRender.lightsOn && notStart)
	{
		audio_play_sound(snd_lights_on, 0, false);
	}
	if (!obj_lightRender.lightsOn)
	{
		audio_play_sound(snd_breaker_lock, 0, false);
	}
}

LightColor = function () 
{
    obj_lightRender.lightBlue = !obj_lightRender.lightBlue;
}


// breakers interact 
Interact = function (_pickUp)  
{
    
    if(_pickUp == obj_key) 
	{
        if(lightsBroken == 0) 
		{
			// change lights to opposite state 
			lightsOn = !lightsOn;
			SwitchLights(lightsOn);
			
            reduceDelay = true;
        }
    }
	else 
	{
		audio_play_sound(snd_failed_interaction, 0, false);
	}
}




