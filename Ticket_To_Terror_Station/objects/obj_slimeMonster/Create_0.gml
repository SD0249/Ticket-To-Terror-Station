moveSpeed = 10;

loseGame = function() {
    room_goto(Room_Lose);
}

// check if monster specific task is done 

// if water is not on end game 
if(!obj_spigot.waterOn) {
    // should made start an alarm 
    // loseGame();
}
