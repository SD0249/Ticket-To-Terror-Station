// Scales and positions correctly based on room
if (room == Room_Office)
{
    image_xscale = 1.5;
    image_yscale = 1.5;
    y = y_office;
}
else if (room == Room_Station)
{
    image_xscale = 1;
    image_yscale = 1;
    y = y_station;
}
// Destroy if transitioning to a room other than station or office

// Sets things in range to noone to avoid errors
//    Note: this should already happen where needed
currentInteractable = noone;
currentPickupable = noone;

// Gets collideable layer
collisionTiles = layer_tilemap_get_id("Tiles_Collision");

depth = -100;
