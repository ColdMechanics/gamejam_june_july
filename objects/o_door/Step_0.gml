/// @description Change Door Sprite on Player Contact

// TODO test collision with player
var _collideWithPlayer = false;

if(_collideWithPlayer) {
	switch(currentDoorState) {
		case DoorState.Open:
			image_index = 0;
			break;
		case DoorState.Fail:
			image_index = 5;
			break;
		case DoorState.Success:
			image_index = 4;
			break;
		default:
			image_index = 1;
			break;
	}
	
	if(keyboard_check(vk_space)) {
		show_debug_message("Change scene now!");
		// TODO handle switch scene here
	}
}
else {
	switch(currentDoorState) {
		case DoorState.Open:
			image_index = 2;
			break;
		case DoorState.Fail:
			image_index = 7;
			break;
		case DoorState.Success:
			image_index = 6;
			break;
		default:
			image_index = 3;
			break;
	}
}