// Create a phone timer object if none exists
if (!instance_exists(obj_timer_phone))
{
    instance_create_layer(x, y, "Instances", obj_timer_phone);
}