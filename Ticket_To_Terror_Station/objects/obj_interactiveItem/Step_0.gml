// Gets a reference to the player if it doesn't have one yet
if (playerRef == noone or !instance_exists(playerRef))
{
    playerRef = instance_nearest(x, y, obj_player);
}

// Checks for interaction when player exists
else
{
	// If of interactable type, passes itself in as current interactable if that field is empty
    //    and it's in range or removes itself from that field if it's out of range
    if (isInteractable)
    {
        if (canInteract && distance_to_object(playerRef) <= range && playerRef.currentInteractable == noone)
        {
            playerRef.currentInteractable = id;
        }
        else if (distance_to_object(playerRef) > range && playerRef.currentInteractable == id)
        {
        	playerRef.currentInteractable = noone;
        }
    }
    
    // If of pickupable type, passes itself in as current pickupable if that
    //    field is empty and it's in range or removes itself from that field if it's out of range
    if (isPickupable)
    {
        if (distance_to_object(playerRef) <= range && playerRef.currentPickupable == noone)
        {
            playerRef.currentPickupable = id;
        }
        else if (distance_to_object(playerRef) > range && playerRef.currentPickupable == id)
        {
        	playerRef.currentPickupable = noone;
        }
    }
}