// Inherit the parent event
event_inherited();

trashCount = 0; // amount of trash in scene will decrease, task complete when 0

Interact = function (_pickUp)  
{
    if(_pickUp == obj_trash) 
    {
        trashCount--;
        
        // remove item from inteventory 
        obj_player.inventory = -1;
        obj_Hub.UpdateItemHub(obj_player.inventory);
        
        if(trashCount == 0) 
        {
            taskManager.tasksCount--;
        }
    }
}

