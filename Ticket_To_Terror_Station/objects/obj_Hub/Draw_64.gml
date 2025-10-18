if(!active)
{
	exit;
}
else
{
	// draw timer 
	var posX = view_wport/2 - sprite_get_width(spr_timerBack)/2;


	draw_sprite(spr_timerBack, 1, posX, 16);
	draw_sprite_ext(spr_timerFront, 1, posX, 16, 
	            max(0, obj_timeManager.timeUntilMonster/obj_timeManager.timeMax), 
	            1, 0, c_white, 1);
			
	// draw sanity 
	var taskMan = instance_find(taskManager,0);

	draw_sprite(spr_timerBack, 1, posX, 64);
	draw_sprite_ext(spr_sanityFront, 1, posX, 64, 
	                max(0, taskMan.sanity/taskMan.sanityMax), // calc fraction of bar to take up
	                1, 0, c_white, 1);


	var posY = room_height/2 - 108;

	// draw back of inventory 
	draw_sprite(inventoryHub, -1, 16, posY);

	// draw inventory item
	switch (inventoryItem) {
		case obj_ladder: 
	        draw_sprite(iLadder, -1, 16, posY) break;
	    case obj_trash:
	        draw_sprite(iTrash, -1, 16, posY); break;
	    case obj_mop:
	        draw_sprite(iMop, -1, 16, posY); break;
	    case obj_wrench: 
	        draw_sprite(iWrench, -1, 16, posY); break;
	    case obj_lightBulb:
	        draw_sprite(iLightbulb, -1, 16, posY); break;
	    case obj_key: 
	        draw_sprite(iKey, -1, 16, posY); break;
	    default: break;
        
	}
}

