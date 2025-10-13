lowerSanity = 0;
playerRef = noone;

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
    else
    {
        y = dropY_Station;
        image_xscale = 1;
        image_yscale = 1;
    }
}
