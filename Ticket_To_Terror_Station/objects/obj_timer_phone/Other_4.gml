// Destroy this when leaving the main game rooms
if (room != Room_Office && room != Room_Station)
{
    instance_destroy();
}