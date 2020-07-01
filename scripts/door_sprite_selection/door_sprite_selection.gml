/// @description door_sprite_select()

switch(current_door_state) {
	case DoorState.Open:
		image_index = 2 - player_in_front * 2;
		break;
	case DoorState.Fail:
		image_index = 7 - player_in_front * 2;
		break;
	case DoorState.Success:
		image_index = 6 - player_in_front * 2;
		break;
	default:
		image_index = 3 - player_in_front * 2;
		break;
}