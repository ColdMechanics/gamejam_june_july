/// @description Initialize Door Image

enum DoorState {
	Open,
	Fail,
	Success,
	Close
}

current_door_state = DoorState.Close;
player_in_front = false;

door_sprite_selection();