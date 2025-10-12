// Gets a reference to the player if it doesn't have one yet
if (playerRef == noone)
{
    playerRef = instance_nearest(x, y, obj_player);
}

// Passes itself in as current interactable if that field is empty and it's in range
//    or removes itself from that field if it's out of range
else
{
	if (distance_to_object(playerRef) <= range && playerRef.currentInteractable == noone)
    {
        playerRef.currentInteractable = id;
    }
    else if (distance_to_object(playerRef) > range && playerRef.currentInteractable == id)
    {
    	playerRef.currentInteractable = noone;
    }
}