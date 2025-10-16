moveSpeed = 10;

loseGame = function() {
    room_goto(Room_Lose);
}

nextDay = function() {
    room_goto(Room_AfterDay);
    
    with(obj_player) {
        locked = true;
        visible = false;
    }
}

