// assuming we are still switching rooms for each day 
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

dayTracker++;