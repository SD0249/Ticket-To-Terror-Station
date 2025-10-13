// Inherit the parent event
event_inherited();

Interact = function (_pickUp) {
    
    if (_pickUp == obj_mop) {
        // delete puddle
        instance_destroy();
        
        taskManager.puddleCount--;
        if(taskManager.puddleCount == 0) {
            taskManager.tasksCount--;
        }
    }
}
