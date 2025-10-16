moveSpeed = 10;

depth = -100; // Same depth as player

loseGame = function() {
    room_goto(Room_Lose);
}

nextDay = function() {
    room_goto(Room_AfterDay);
}

