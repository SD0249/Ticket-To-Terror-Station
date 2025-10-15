// Fields
timeUntilCall = -1;
timeUntilHangup = 600;
remainingCalls = 3;
ringing = false;

// Sets timer for a new call to happen
function NewCall()
{
    remainingCalls--;
    timeUntilCall = random_range(20, 30) * 60;
}

// Destroy this when last call is taken or missed, aka
//    when newcall would be called while remainingcalls < 1
//    Draw debug stuff showing time until call, calls remaining

// Sets timer for new call immediately upon creation
NewCall();