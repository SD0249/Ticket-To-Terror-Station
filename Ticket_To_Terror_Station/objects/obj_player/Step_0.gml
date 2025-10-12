// Moves with left/right arrows and A/D keys
var movementX = 0;
if (locked == false)
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
if (climbing == true)
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
if (locked == false)
{
    // Interacts with current interactable when z is released
    if (currentInteractable != noone && keyboard_check_released(ord("Z")))
    {
        currentInteractable.Interact(inventory);
    }
    
    // Picks up item in range when x is released
    else if (currentPickupable != noone && inventory == noone && keyboard_check_released(ord("X")))
    {
        inventory = currentPickupable;
        currentPickupable = noone;
        inventory.Hold(currentPickupable);
    }
    
    // Drops held item when x is released
    else if (inventory != noone && keyboard_check_released(ord("X")))
    {
        inventory.Drop();
        inventory = noone;
    }
}