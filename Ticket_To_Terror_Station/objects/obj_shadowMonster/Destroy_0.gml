var player = instance_find(obj_player, 0);
if(instance_exists(player))
{
	instance_deactivate_object(player);
}


room_goto(Room_Win);
