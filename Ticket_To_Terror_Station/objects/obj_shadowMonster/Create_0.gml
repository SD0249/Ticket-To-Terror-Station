moveSpeed = 10;

depth = -100; // Same depth as player

loseGame = function() {
    room_goto(Room_Lose);
	
	instance_destroy();
}

nextDay = function() {
    room_goto(Room_AfterDay);
    
    with(obj_player) {
        locked = true;
        visible = false;
    }
	
	instance_destroy();
}
