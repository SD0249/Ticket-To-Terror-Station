draw_sprite(inventoryHub, -1, 16, room_height/2 - 108);

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