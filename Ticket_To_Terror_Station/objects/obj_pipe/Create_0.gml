event_inherited();

isBroken = false;
isInteractable = false;

Interact = function (_pickUp)  {
    
    if(isBroken) {
        if (_pickUp == obj_wrench) { 
            isBroken = false;
            isInteractable = false;
        
            var spigot = instance_find(obj_spigot, 0);
            spigot.brokenPipes--;
    
            if(spigot.brokenPipe == 0) {
                id.Interact(_pickUp);  // to turn off water 
                taskManager.tasksCount--;
            }
        }
    }
}