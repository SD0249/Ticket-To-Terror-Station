// Moves with left/right arrows and A/D keys
var movementX = 0;
if (locked == false)
{
    movementX = keyboard_check(vk_right or ord("D")) - keyboard_check(vk_left or ord("A"));
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
else if (movementX != 0)
{
    // set sprite_index to walking sprite
}
else if (recentDirection < 0)
{
    sprite_index = Player_Left;
}
else
{
	sprite_index = Player_Right;
}