// Unlocks the player and starts the game timer
var playerRef = instance_nearest(x, y, obj_player);
if (!playerFree && instance_exists(playerRef))
{
    playerRef.locked = false;
    playerFree = true;
    var timeManagerRef = instance_nearest(x, y, obj_timeManager);
    if (instance_exists(timeManagerRef))
    {
        timeManagerRef.StartGame();
    }
}