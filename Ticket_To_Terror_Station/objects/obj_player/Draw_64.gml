//DrawDebugText();    // comment this out when finished

draw_set_color(c_white);

// If an interactable is in range, draw interact popup
if (currentInteractable != noone && instance_exists(currentInteractable))
{
    draw_text(140, 470, "PRESS 'Z' TO INTERACT");
}

// If holding item, draw drop popup
if (inventory >= 0)
{
    draw_text(140, 500, "PRESS 'X' TO DROP");
}

// If not holding anything and pickup is in range, draw pick up popup
else if (currentPickupable != noone && instance_exists(currentPickupable))
{
    draw_text(140, 500, "PRESS 'X' TO PICK UP");
}

// Display E to exit office, space to progress text
if (room == Room_Office)
{
    draw_text(500, 500, "PRESS 'E' TO EXIT THE OFFICE");
    if (locked)
    {
        draw_text(870, 370, "[SPACE]");
    }
}