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

// Let Sanity be managed here! Bc Office Reset is also used when day is repeated, not only over to the next day
switch(room)
{
	case Room_Win:
	case Room_StartMenu:
	case Room_Credit:
		sanity = sanityMax;
	break;
	
	case Room_Lose:
	case Room_SanityLose:
		sanity = previousSanity; // Replay game option
	break;
}
	
	