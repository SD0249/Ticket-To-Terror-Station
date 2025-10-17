// Inherit the parent event
event_inherited();

// To Do: reset to day player lost on  
var taskM = instance_find(taskManager, 0);

taskM.RepeatDay();
taskM.restartRoom();

room_goto(Room_Office);
