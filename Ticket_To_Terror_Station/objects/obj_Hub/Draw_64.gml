// draw timer 
var posX =view_wport/2 - sprite_get_width(spr_timerBack)/2;

draw_sprite(spr_timerBack, 1, posX, 16);
//draw_sprite_ext(spr_timerFront, 1, view_wport/2, 16, 
//max(0, obj_timeManager. timer variable), 1, 0, c_white);

// draw sanity 
draw_sprite(spr_sanityBack, 1, posX, 64); 
draw_sprite_ext(spr_sanityFront, 1, posX, 64, 
                max(0, obj_player.sanity/obj_player.sanityMax), // calc fraction of bar to take up
                1, 0, c_white, 1);


// draw back of inventory 
draw_sprite(inventoryHub, -1, 16, room_height/2 - 108);

// draw inventory item
switch (inventoryItem) {
	case obj_ladder: 
        /* draw ladder inventory item */ break;
    case obj_trash:
        draw_sprite(Trash, -1, 20, room_height/2 - 95); break;
    case obj_mop:
        draw_sprite(mop, -1, 16, room_height/2 - 108); break;
    case obj_wrench: 
        draw_sprite(spr_wrench, -1, 16, room_height/2 - 108); break;
    case obj_lightBulb:
        draw_sprite(spr_lightbulb, -1, 7, room_height/2 - 140); break;
    case obj_key: 
        draw_sprite(spr_key, -1, 6, room_height/2 - 140); break;
    default: break;
        
}