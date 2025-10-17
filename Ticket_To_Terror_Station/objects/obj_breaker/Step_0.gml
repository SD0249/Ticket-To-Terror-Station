// Inherit the parent event
event_inherited();

if (delay > 0) 
{
    delay -= 1;
} 
else if (reduceDelay)
{
    delay = delay_duration;
	reduceDelay = false;
}