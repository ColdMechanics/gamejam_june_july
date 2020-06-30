/// @description Change Door Sprite on Player Contact

player_in_front = place_meeting(x, y, o_player);

if(player_in_front) {
	door_sprite_selection();
	
	if(keyboard_check_pressed(vk_space) and current_door_state == DoorState.Close) {
		audio_play_sound(a_door_open, 4, false);
		
		var _player = instance_find(o_player, 0);
		
		_player.current_player_state = Player.door;
		current_door_state = DoorState.Open;
		
		alarm[0] = 100;
	}
}
else {
	door_sprite_selection();
}