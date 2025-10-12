// Determine current interactable debugging text
var debugText_interactable = "Current Interactable: ";

if (currentInteractable == noone)
{
    debugText_interactable += "None";
}
else
{
    debugText_interactable += object_get_name(currentInteractable.object_index);
}

// Determine current pickupable debugging text
var debugText_pickupable = "Current Pickupable: ";

if (currentPickupable == noone)
{
    debugText_pickupable += "None";
}
else
{
    debugText_pickupable += object_get_name(currentPickupable.object_index);
}

// Determine currently held item debugging text
var debugText_held = "Currently Held: ";

if (inventory == noone)
{
    debugText_held += "None";
}
else
{
    debugText_held += object_get_name(inventory.object_index);
}

// Display debug text
draw_set_color(#ffffff);
draw_text(20, 20, debugText_interactable);
draw_text(20, 40, debugText_pickupable);
draw_text(20, 60, debugText_held);