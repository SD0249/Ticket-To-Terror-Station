// Fields
currentInteractable = noone;
currentPickupable = noone;
inventory = noone;
moveSpeed = 10.0;
recentDirection = 1;
locked = false;
climbing = false;
collisionTiles = layer_tilemap_get_id("Tiles_Collision");
sanity = 100;

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