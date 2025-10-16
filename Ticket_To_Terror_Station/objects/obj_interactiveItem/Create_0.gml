lowerSanity = 0;
playerRef = noone;

depth = -2;

Interact = function(_pickUp){ }

// Repositions and scales the object appropriately depending on room
RepositionAndScale = function()
{
    if (room = Room_Office)
    {
        y = dropY_office;
        image_xscale = 1.5;
        image_yscale = 1.5;
    }
    else if (room == Room_Station)
    {
        y = dropY_Station;
        image_xscale = 1;
        image_yscale = 1;
    }
}
