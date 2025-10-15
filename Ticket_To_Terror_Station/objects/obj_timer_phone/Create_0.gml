// Fields
timeUntilCall = -1;
timeUntilHangup = -1;
timeUntilComplete = -1;
remainingCalls = 3;

// Sets timer for a new call to happen
function NewCall()
{
    remainingCalls--;
    timeUntilCall = random_range(20, 30) * 60;
}

// Called when the player answers the phone while it's ringing
function Answer()
{
    // play talking on phone sound
    audio_stop_sound(snd_phone_ringing);
    timeUntilHangup = 0;
    timeUntilComplete = 240;
}

// Draws phone timer info
function DrawDebugText()
{
    // Display debug text
    draw_set_color(c_white);
    draw_text(20, 100, "Time Until Call: " + string(timeUntilCall));
    draw_text(20, 120, "Time Until Hangup: " + string(timeUntilHangup));
    draw_text(20, 140, "Time Until Complete: " + string(timeUntilComplete));  
    draw_text(20, 160, "Calls Remaining: " + string(remainingCalls));      
}

// Sets timer for new call immediately upon creation
NewCall();