// Inherit the parent event
event_inherited();

var taskM = instance_find(taskManager, 0);

taskM.NextDay();

room_goto(Room_Office);