// Locks door if it should be locked
var doorRef = instance_nearest(x, y, obj_door);
if (room == Room_Station && locked && doorRef != noone && instance_exists(doorRef))
{
    doorRef.LockDoor();
}