// Moves with left/right arrows and A/D keys
var movementX = 0;

if (!locked && y != y_climb && visible)
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
    sprite_index = spr_player_climb
}
else if (movementX < 0)
{
    sprite_index = spr_player_walk_left;
	reduceDelay = true;
}
else if (movementX > 0)
{
    sprite_index = spr_player_walk_right;
	reduceDelay = true;
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
if (sprite_index == spr_player_walk_left || 
    sprite_index == spr_player_walk_right)
{
	if (delay > 0) 
	{
	 delay -= 1;
	} 
	else if (reduceDelay)
	{
		walkNum = irandom(3);
		if (walkNum == 0)
		{
		    audio_play_sound(snd_footstep_1, 0, false);
		}
		else if (walkNum == 1)
		{
		    audio_play_sound(snd_footstep_2, 0, false);
		}
		else if (walkNum == 2)
		{
		    audio_play_sound(snd_footstep_3, 0, false);
		}
		else if (walkNum == 3)
		{
		    audio_play_sound(snd_footstep_4, 0, false);
		}
		delay = delay_duration;
		reduceDelay = false;
	}
}

// Interacts with light or ladder only while on ladder
if (!locked && y == y_climb)
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
            audio_play_sound(snd_wrench_pickup, 0, false);
        } 
		else if (currentPickupable.object_index = obj_mop)
        {
            audio_play_sound(snd_mop_pickup, 0, false);
			alarm[0] = 30;
        }
		else if (currentPickupable.object_index = obj_lightBulb)
        {
            audio_play_sound(snd_lightbulb_pickup, 0, false);
        }
		else if (currentPickupable.object_index = obj_key)
        {
            audio_play_sound(snd_key_pickup, 0, false);
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
            audio_play_sound(snd_wrench_pickup, 0, false);
        }
		else if (inventory = obj_mop)
        {
            audio_play_sound(snd_mop_pickup, 0, false);
			alarm[0] = 30;
        }
		else if (inventory = obj_lightBulb)
        {
            audio_play_sound(snd_lightbulb_pickup, 0, false);
        }
        else if (inventory = obj_key)
        {
            audio_play_sound(snd_key_pickup, 0, false);
        }
		
        inventory = -1;
        obj_Hub.UpdateItemHub(inventory);
    }
}