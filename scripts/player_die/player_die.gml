/// @description player_die()

if(current_player_state != Player.dead) {
	current_player_state = Player.dead;

	audio_play_sound(a_explosion, 4, false);
	sprite_index = s_player_death;

	alarm[1] = 110;
}