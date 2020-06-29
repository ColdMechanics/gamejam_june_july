switch(currentDoorState) {
	case DoorState.Open:
		image_index = 2 - playerInFront * 2;
		break;
	case DoorState.Fail:
		image_index = 7 - playerInFront * 2;
		break;
	case DoorState.Success:
		image_index = 6 - playerInFront * 2;
		break;
	default:
		image_index = 3 - playerInFront * 2;
		break;
}