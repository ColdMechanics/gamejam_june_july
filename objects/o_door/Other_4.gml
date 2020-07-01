if(door_id != 99) {
	var _part_competed = create_part_completed_variable(door_id);
	if(not variable_global_exists(_part_competed)) {
		current_door_state = DoorState.Close;
	} else if(variable_global_get(_part_competed)) {
		current_door_state = DoorState.Success;
	} else {
		current_door_state = DoorState.Fail;
	}
}