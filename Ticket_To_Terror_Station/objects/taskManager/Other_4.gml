if(reset) {
    // reset office
    if(room == Room_Office) {
        room_restart();
            show_debug_message("apple");
    }
    reset = false;
}

if(startDay) {
    if(room == Room_Station) {
        
        room_restart()
        
        switch (dayTracker) {
            case 1: 
                Day1(); break;
            case 2: 
                Day2(); break;
            case 3:
                Day3(); break;
            case 4:
                Day4(); break;
            default: break; // game ends
        }
        
        startDay = false;
    }
}