x -= moveSpeed;
// train wraps in start menu 
if(room == Room_StartMenu) {
    if (x <= 0 - sprite_width - 1000) { 
        x = room_width;
    }
}
else {
    if (x <= 0 - sprite_width - 1000) {
        instance_destroy(); 
    }
}

