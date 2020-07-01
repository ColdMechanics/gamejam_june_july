// Stop all music
audio_stop_sound(lobby_music);
audio_stop_sound(room_1_music);
audio_stop_sound(room_2_music);
audio_stop_sound(room_3_music);
audio_stop_sound(room_4_music);

// Play the right musi
switch(room) {
	case r_lobby:
		audio_play_sound(lobby_music, 6, true);
	break;
	case r_enigme_1:
		audio_play_sound(room_1_music, 6, true);
	break;
	case r_enigme_1_1:
		audio_play_sound(room_1_1_music, 6, true);
	break;
	case r_enigme_2:
		audio_play_sound(room_2_music, 6, true);
	break;
	case r_paco:
		audio_play_sound(room_3_music, 6, true);
	break;
	case r_enigme4:
		audio_play_sound(room_4_music, 6, true);
	break;
}