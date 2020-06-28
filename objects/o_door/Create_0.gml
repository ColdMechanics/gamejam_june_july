/// @description Initialize Door Image

enum DoorState {
	Open,
	Fail,
	Success,
	Close
}

currentDoorState = DoorState.Close;

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