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