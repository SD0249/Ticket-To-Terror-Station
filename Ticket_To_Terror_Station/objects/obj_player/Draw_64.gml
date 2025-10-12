// Display current interactable for debugging
var debugText = "Current Interactable: ";

if (currentInteractable == noone)
{
    debugText += "None";
}
else
{
    debugText += object_get_name(currentInteractable.object_index);
}
draw_set_color(#ffffff);
draw_text(20, display_get_gui_height() - 40, debugText);