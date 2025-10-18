event_inherited();

Interact = function (_pickUp) 
{
    if (playerRef.inventory != obj_ladder) 
	{
        audio_play_sound(snd_crate, 0, false);
        playerRef.Hide();
    }
	// fade screen to black in .5 sec 
	// load scene 
	// fade that sceen in in .5 sec
}
