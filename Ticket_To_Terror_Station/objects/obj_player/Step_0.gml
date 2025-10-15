// Moves with left/right arrows and A/D keys
var movementX = 0;
if (!locked && y != y_climb_top)
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
if (y == y_climb_top)
{
    sprite_index = spr_player_climb_top;
}
else if (climbing)
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

// Determines when to play the footstep noises
if (sprite_index == 0 || 
    sprite_index == 4)
{
    walkNum = irandom(3);
    if (walkNum == 0)
    {
        audio_play_sound(snd_footstep_1, 0, false);
    }
    if (walkNum == 1)
    {
        audio_play_sound(snd_footstep_2, 0, false);
    }
    if (walkNum == 2)
    {
        audio_play_sound(snd_footstep_3, 0, false);
    }
    if (walkNum == 3)
    {
        audio_play_sound(snd_footstep_4, 0, false);
    }
}

// Interacts with light or ladder only while on ladder
if (!locked && y == y_climb_top)
{
    if (currentInteractable != noone 
        && instance_exists(currentInteractable) 
        && keyboard_check_released(ord("Z")))
    {
        if (currentInteractable.object_index == obj_light 
            or currentInteractable.object_index == obj_ladder)
        {
            currentInteractable.Interact(inventory);
        }
    }
}

// Regular interact and pickup logic
else if (!locked)
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
        if (currentPickupable.object_index = obj_trash)
        {
            audio_play_sound(snd_trash_pickup, 0, false);
        }
        else if (currentPickupable.object_index = obj_wrench)
        {
            audio_play_sound(snd_wrench_pick_up, 0, false);
        } 
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
        
        if (inventory = obj_trash)
        {
            audio_play_sound(snd_trash_pickup, 0, false);
        }
        else if (inventory = obj_wrench)
        {
            audio_play_sound(snd_wrench_pick_up, 0, false);
        }
        
        inventory = -1;
        obj_Hub.UpdateItemHub(inventory);
    }
}

// move up or down if climbing, then stop once at top/bottom
if (climbing)
{
    y += 4 * climbDirection;
    if (y < y_climb_top)
    {
        y = y_climb_top;
        locked = false;
        climbing = false;
    }
    if (y > y_station)
    {
        y = y_station;
        locked = false;
        climbing = false;
    }
}