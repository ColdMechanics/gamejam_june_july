/// @description Initialize Door Image

enum DoorState {
	Open,
	Fail,
	Success,
	Close
}

player_in_front = false;

// Find the door state
var _part_competed = "part_" + string(door_id + 1) + "_completed";
show_debug_message(_part_competed+string(variable_global_exists(_part_competed)));
if (variable_global_exists(_part_competed)) {
	if (variable_global_get(_part_competed)) {
		current_door_state = DoorState.Success;
	} else {
		current_door_state = DoorState.Fail;
	}
} else {
	current_door_state = DoorState.Close;
}

door_sprite_selection();