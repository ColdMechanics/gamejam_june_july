/// @description Change Door Sprite on Player Contact

playerInFront = place_meeting(x, y, o_player);

if(playerInFront) {
	door_sprite_selection();
	
	if(keyboard_check(vk_space)) {
		var _player = instance_find(o_player, 0);
		
		_player.image_alpha = 0;
		currentDoorState = DoorState.Open;
		
		alarm[0] = 60;
	}
}
else {
	door_sprite_selection();
}