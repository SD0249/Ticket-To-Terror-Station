// Lock office door and kick player into station if needed
if (room == Room_Office)
{
    var playerRef = instance_nearest(x, y, obj_player);
    if (playerRef != noone)
    {
        playerRef.GoThroughDoor();
    }
}
var doorRef = instance_nearest(x, y, obj_door);
doorRef.LockDoor();