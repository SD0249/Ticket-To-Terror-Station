alarm[1]=1;

// should maybe be a function that is called in reset or something
// currently using bool to make sure only done once per day 
// should be increase in reset 
// dayTracker++;

// New logic -> Whether to draw health / sanity GUIs
var GUI_Active = room == Room_Office || room == Room_Station;

with(obj_Hub) {
	active = GUI_Active;
}



//// !! This Logic might not work right
//// Find Player Instance to disable and enable
//var player = instance_find(obj_player, 0);

//// Since the task manager is persistent over all rooms, it should let the player be active or not in certain cases.
//switch(room)
//{
//	case Room_Win:
//	case Room_StartMenu:
//	case Room_Credit:
//		ResetDay();
//		instance_deactivate_object(player);
//	break;
	
//	case Room_Lose:
//	case Room_SanityLose:
//		instance_deactivate_object(player);
//	break;
	
//	case Room_Station:
//	case Room_Office:
//		instance_activate_object(player);
//	break;
//}
	
	