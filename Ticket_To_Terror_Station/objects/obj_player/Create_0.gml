// Fields
currentInteractable = noone;
currentPickupable = noone;
inventory = -1;    // nonexistent obj index
moveSpeed = 10.0;
recentDirection = 1;
locked = true;
climbing = false;
y_office = 280;
y_station = 480;
y_climb = 80;        // on top of ladder; change this value
collisionTiles = layer_tilemap_get_id("Tiles_Collision");
sanity = 90;
sanityMax = 100;

// Not needed unless state needs to be accessed for something
//     other than determining which animation should play
//
// // Movement/animation state
// enum player {
// 	idle,
// 	walkLeft,
// 	walkRight,
//     climb
// }	
// 
// state = player.idle;

// Transition between station and office
function GoThroughDoor()
{
    currentInteractable = noone;
    currentPickupable = noone;
    if (room == Room_Office)
    {
        room_goto(Room_Station);
    }
    else
    {
        room_goto(Room_Office);
    }
}

// Draws debug text to show which items are in range or held by the player
function DrawDebugText()
{
    // Determine current interactable debugging text
    var debugText_interactable = "Current Interactable: ";

    if (currentInteractable != noone && instance_exists(currentInteractable))
    {
        debugText_interactable += object_get_name(currentInteractable.object_index);    
    }
    else
    {
        debugText_interactable += "None";
    }

    // Determine current pickupable debugging text
    var debugText_pickupable = "Current Pickupable: ";

    if (currentPickupable != noone && instance_exists(currentPickupable))
    {
        debugText_pickupable += object_get_name(currentPickupable.object_index);    
    }
    else
    {
        debugText_pickupable += "None";
    }

    // Determine currently held item debugging text
    var debugText_held = "Currently Held: ";

    if (inventory < 0)
    {
        debugText_held += "None";
    }
    else
    {
        debugText_held += object_get_name(inventory);
    }

    // Display debug text
    draw_set_color(#ffffff);
    draw_text(20, 20, debugText_interactable);
    draw_text(20, 40, debugText_pickupable);
    draw_text(20, 60, debugText_held);
}