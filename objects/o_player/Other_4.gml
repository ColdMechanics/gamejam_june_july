current_player_state = Player.moving;

if(room == r_lobby) {
	can_jump = false;
	audio_stop_sound(a_factory_background);
	audio_play_sound(a_factory_background, 5, true);
} else {
	
}
if(room == r_enigme4) {
	can_jump = false;
}