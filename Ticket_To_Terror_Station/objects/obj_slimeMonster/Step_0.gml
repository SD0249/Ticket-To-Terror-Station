x -= moveSpeed;

// once moster is half way acrocss scene,
// check if water is on 
// if not on end game
if(x <= room_width/2 - sprite_get_width(spr_slimeMonster)) {
    if(!obj_spigot.waterOn) {
        loseGame();
		instance_destroy();	// It should get destroyed - causes problem when restarting the game
    }
} 

if (x <= 0 - sprite_get_width(spr_slimeMonster)) {
    instance_destroy();
    nextDay(); 
}

