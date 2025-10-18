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
else if (room == Room_Station)
{
    var doorRef = instance_nearest(x, y, obj_door);
    if (room == Room_Station && locked && doorRef != noone && instance_exists(doorRef))
    {
        doorRef.LockDoor();
    }
}