
alarm[1]=1;

// should maybe be a function that is called in reset or something
// currently using bool to make sure only done once per day 
if(startDay) {
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

// should be increase in reset 
// dayTracker++;