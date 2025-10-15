// Scales and positions correctly based on room
if (room == Room_Office)
{
    image_xscale = 1.5;
    image_yscale = 1.5;
    y = y_office;
}
else
{
    image_xscale = 1;
    image_yscale = 1;
    y = y_station;
}

// Sets things in range to noone to avoid errors
//    Note: this should already happen where needed
currentInteractable = noone;
currentPickupable = noone;