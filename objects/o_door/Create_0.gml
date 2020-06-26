/// @description Initialize Door Image

switch(door_state) {
	case "Open":
		image_index = 2;
		break;
	case "Fail":
		image_index = 7;
		break;
	case "Success":
		image_index = 6;
		break;
	default:
		image_index = 3;
		break;
}