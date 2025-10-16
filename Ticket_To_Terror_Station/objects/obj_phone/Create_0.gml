// Inherit the parent event
event_inherited();

// Talk on phone if it's ringing
Interact = function(_pickUp)
{
    var phoneTimer = instance_nearest(x, y, obj_timer_phone);
    if (phoneTimer != noone && instance_exists(phoneTimer))
    {
        if (phoneTimer.timeUntilHangup > 0)
        {
            playerRef.locked = true;
			audio_play_sound(snd_phone_talking, 0, true);
            phoneTimer.Answer();
        }
        else
        {
            audio_play_sound(snd_failed_interaction, 0, false);
        }
    }
    else
    {
    	audio_play_sound(snd_failed_interaction, 0, false);
    }
}