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
    // set sprite_index to climbing sprite 
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
    // set sprite_index to left idle sprite
}
else
{
    // set sprite_index to right idle sprite
}

// Interact and pickup logic
if (!locked)
{
    // Interacts with current interactable when z is released
    if (currentInteractable != noone && keyboard_check_released(ord("Z")))
    {
        currentInteractable.Interact(inventory);
    }
    
    // Picks up item in range when x is released
    else if (currentPickupable != noone && inventory < 0 && keyboard_check_released(ord("X")))
    {
        inventory = currentPickupable.object_index;
        obj_Hub.UpdateItemHub(inventory);
        instance_destroy(currentPickupable);
        currentPickupable = noone;
    }
    
    // Drops held item when x is released
    else if (inventory >= 0 && keyboard_check_released(ord("X")))
    {
        var inst = instance_create_layer(x, y, "Instances", inventory);
        inst.y = inst.dropY;
        inventory = -1;
        obj_Hub.UpdateItemHub(inventory);
    }
}