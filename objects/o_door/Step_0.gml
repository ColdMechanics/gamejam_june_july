/// @description Change Door Sprite on Player Contact

player_in_front = place_meeting(x, y, o_player);

if(player_in_front) {
	door_sprite_selection();
	
	if(keyboard_check(vk_space)) {
		var _player = instance_find(o_player, 0);
		
		_player.current_player_state = Player.door;
		current_door_state = DoorState.Open;
		
		alarm[0] = 60;
	}
}
else {
	door_sprite_selection();
}