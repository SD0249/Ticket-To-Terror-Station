// Count down until ring
if (timeUntilCall > 0)
{
    timeUntilCall--;
    if (timeUntilCall <= 0)
    {
        timeUntilCall = 0;
        audio_play_sound(snd_phone_ringing, 0, true);
        timeUntilHangup = 600;
    }
}
else if (timeUntilHangup > 0)
{
    timeUntilHangup--;
    if (timeUntilHangup <= 0)
    {
        timeUntilHangup = 0;
        audio_stop_sound(snd_phone_ringing);
        var taskmanRef = instance_nearest(x, y, taskManager);
        if (taskmanRef != noone && instance_exists(taskmanRef))
        {
            taskmanRef.MissedTask();
        }   
        
        // Start next call timer if any calls are left, else destroy this
        if (remainingCalls > 0)
        {
            NewCall();
        }
        else
        {
            instance_destroy();
        }     
    }
}

// When player is on call, decrement time, unlock them once time is over
else if (timeUntilComplete > 0)
{
    timeUntilComplete--;
    if (timeUntilComplete <= 0)
    {
        timeUntilComplete = 0;
        var playerRef = instance_nearest(x, y, obj_player);
        if (playerRef != noone && instance_exists(playerRef))
        {
            playerRef.locked = false;
        }
        
        // Start next call timer if any calls are left, else destroy this
        if (remainingCalls > 0)
        {
            NewCall();
        }
        else
        {
            instance_destroy();
        }
    }
}