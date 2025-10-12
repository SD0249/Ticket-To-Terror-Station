// Fields
currentInteractable = noone;
currentPickupable = noone;
inventory = noone;
moveSpeed = 10.0;
recentDirection = 1;
locked = false;
climbing = false;
collisionTiles = layer_tilemap_get_id("Tiles_Collision");

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
// REWORK THIS
function GoThroughDoor()
{
    // Exits if already switching or just switched rooms
    if (instance_exists(obj_switcher_station_office))
    {
        exit;
    }
    
    // Creates a switcher then switches to new room
    var roomSwitcher = instance_create_depth(0,0,0, obj_switcher_station_office);
    roomSwitcher.playerData = self;
    roomSwitcher.previousRoom = room;
    room_goto(Room_Office);
}