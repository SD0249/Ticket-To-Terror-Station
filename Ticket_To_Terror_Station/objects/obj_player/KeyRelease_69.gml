// Goes directly to station if cutscene finished
if (room == Room_Office && !locked)
{
    room_goto(Room_Station);
}