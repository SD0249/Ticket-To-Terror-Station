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
            audio_play_sound(snd_phone_pick_up, 0 ,false);
            phoneTimer.Answer();
        }
        else
        {
            // play failed interaction sound
        }
    }
    else
    {
    	// play failed interaction sound
    }
}