if ((instance_place(x + 0, y + 0, o_player) > 0))
{
	if(visible == true)
	{
		global.part_3_completed = true;
		audio_play_sound(a_win, 0, 0);
		instance_destroy();
	}
}