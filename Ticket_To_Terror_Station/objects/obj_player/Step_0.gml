// Moves with left/right arrows and A/D keys
var movementX = 0;
if (!locked)
{
    
    movementX = (keyboard_check(vk_right) or keyboard_check(ord("D"))) 
        - (keyboard_check(vk_left) or keyboard_check(ord("A"))); 
    if (movementX != 0)
    {
        recentDirection = movementX;
        move_and_collide(movementX * moveSpeed, 0, collisionTiles);
    }
}

// Determines which animation to play
if (climbing)
{
    sprite_index = spr_player_climb; 
}
else if (movementX < 0)
{
    sprite_index = spr_player_walk_left;
}
else if (movementX > 0)
{
    sprite_index = spr_player_walk_right;
}
else if (recentDirection < 0)
{
    sprite_index = spr_player_idle_left;
}
else
{
    sprite_index = spr_player_idle_right;
}

// Interact and pickup logic
if (!locked)
{
    // Interacts with current interactable when z is released
    if (currentInteractable != noone 
        && instance_exists(currentInteractable)
        && keyboard_check_released(ord("Z")))
    {
        currentInteractable.Interact(inventory);
    }
    
    // Picks up item in range when x is released
    else if (currentPickupable != noone 
        && instance_exists(currentPickupable)
        && inventory < 0 
        && keyboard_check_released(ord("X")))
    {
        inventory = currentPickupable.object_index;
        obj_Hub.UpdateItemHub(inventory);
        instance_destroy(currentPickupable);
        currentPickupable = noone;
        currentInteractable = noone;
    }
    
    // Drops held item when x is released
    else if (inventory >= 0 && keyboard_check_released(ord("X")))
    {
        var inst = instance_create_layer(x, y, "Instances", inventory);
        inst.RepositionAndScale();
        inventory = -1;
        obj_Hub.UpdateItemHub(inventory);
    }
}