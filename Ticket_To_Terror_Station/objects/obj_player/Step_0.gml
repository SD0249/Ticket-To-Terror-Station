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
    // set sprite_index to left walking sprite
}
else if (movementX > 0)
{
    // set sprite_index to right walking sprite
}
else if (recentDirection < 0)
{
    // set sprite_index to left idle sprite
}
else
{
    // set sprite_index to right idle sprite
}