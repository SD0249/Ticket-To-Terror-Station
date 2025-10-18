// Destroy this when leaving the main game rooms, and stop its sounds
if (room != Room_Office && room != Room_Station)
{
    if (audio_is_playing(snd_phone_ringing))
	{
		audio_stop_sound(snd_phone_ringing);
	}
    if (audio_is_playing(snd_phone_talking))
	{
		audio_stop_sound(snd_phone_talking);
	}
    
    instance_destroy();
}