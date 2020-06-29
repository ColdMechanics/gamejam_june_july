/// @description Initialize Door Image

enum DoorState {
	Open,
	Fail,
	Success,
	Close
}

currentDoorState = DoorState.Close;
playerInFront = false;

door_sprite_selection();