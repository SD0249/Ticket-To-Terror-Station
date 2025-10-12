// Inherit the parent event
event_inherited();

trashCount = 0; // amount of trash in scene will decrease, task complete when 0

Interact = function (_pickUp)  
{
    if(_pickUp == obj_trash) 
    {
        trashCount--;
        // destory trash 
        
        if(trashCount == 0) 
        {
            taskManager.tasksCount++;
        }
    } 
}

