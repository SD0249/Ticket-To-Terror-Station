if(surface_exists(lighting_surface) == false) {
    // might want to switch this to camera width and hieght
    // becausee of memory
    lighting_surface = surface_create(room_width, room_height);
}

surface_set_target(lighting_surface);

if(lightsOn) {
    draw_clear_alpha(c_black, 0.55);

    with(obj_lightCut){
        gpu_set_blendmode(bm_subtract);
        draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);
        
        gpu_set_blendmode(bm_add);
        if(obj_lightRender.lightBlue) {
            draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, make_color_rgb(66, 132, 125), 1);
        }
        else {
        	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, make_color_rgb(226, 60, 71), 1);
        }
        
        gpu_set_blendmode(bm_normal);
    }

}
else {
    draw_clear_alpha(c_black, 0.8);
}

surface_reset_target();

draw_surface(lighting_surface, 0,0);