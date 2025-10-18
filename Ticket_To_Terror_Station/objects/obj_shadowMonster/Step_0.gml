x -= moveSpeed;

// once moster is half way acrocss scene,
// check if water is on 
// if not on end game
if(x <= room_width/2 - sprite_get_width(spr_shadowMonster)) {
    if(obj_lightRender.lightsOn) {
        loseGame();
    }
} 

if (x <= 0 - sprite_get_width(spr_shadowMonster)) {
    instance_destroy();
	// nextDay(); Currently will crash so commented out.
}