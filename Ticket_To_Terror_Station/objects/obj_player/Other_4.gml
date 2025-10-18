// Scales and positions correctly based on room
if (room == Room_Office)
{
	active = true;
	
    image_xscale = 1.5;
    image_yscale = 1.5;
    y = y_office;
}
else if (room == Room_Station)
{
    image_xscale = 1;
    image_yscale = 1;
    y = y_station;
    x = 560;
}
else if(room == Room_Win)
{
	active = false;
	newGame = true;
}
else if(newGame && room == Room_StartMenu)
{
	newGame = false;
	game_restart();
}


// Sets things in range to noone to avoid errors
//    Note: this should already happen where needed
currentInteractable = noone;
currentPickupable = noone;

// Gets collideable layer
collisionTiles = layer_tilemap_get_id("Tiles_Collision");

depth = -100;
