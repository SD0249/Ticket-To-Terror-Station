// Lock office door and kick player into station if needed
locked = true;
if (room == Room_Office)
{
    var playerRef = instance_nearest(x, y, obj_player);
    if (playerRef != noone && instance_exists(playerRef))
    {
        playerRef.GoThroughDoor();
    }
}