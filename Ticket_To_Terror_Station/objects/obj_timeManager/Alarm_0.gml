// Lock office door and kick player into station if needed
if (room == Room_Office)
{
    var playerRef = instance_nearest(x, y, obj_player);
    if (playerRef != noone)
    {
        playerRef.GoThroughDoor();
    }
}

// This doesn't work because it still thinks we're in the office,
//    meaning the door doesn't get locked when we get pushed out
var doorRef = instance_nearest(x, y, obj_door);
if (doorRef != noone)
{
    doorRef.LockDoor();
}