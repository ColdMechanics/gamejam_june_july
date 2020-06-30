/// @description Initialize bridge variables

// Make the exit sign flash when all bridge completed

var _bridge_completed = variable_global_exists("part_1_completed") and variable_global_get("part_1_completed") and
						variable_global_exists("part_2_completed") and variable_global_get("part_2_completed") and 
						variable_global_exists("part_3_completed") and variable_global_get("part_3_completed") and 
						variable_global_exists("part_4_completed") and variable_global_get("part_4_completed");
if (_bridge_completed) {
	var _exit_sign = instance_find(o_exit_sign, 0);
	_exit_sign.flashing = true;
	_exit_sign.alarm[0] = 10;
}

// Add the unlock bridge pieces
for ( var _id = 0; _id < 4; ++_id) {
	var _part_competed = "part_" + string(_id + 1) + "_completed";
	if (variable_global_exists(_part_competed) and variable_global_get(_part_competed)) {
		var _bridge = instance_create_layer(bridge_x + _id * 32, bridge_y, "Bridge", o_bridge);
		_bridge.image_index = _id;
		instance_create_layer(bridge_ph_x + _id * 32, bridge_ph_y, "Bridge", o_ph_bridge);
		
		// Create a barrier on the bridge to block the player
		if (not _bridge_completed) {
			instance_create_layer(bridge_ph_x + _id * 32, bridge_ph_y - 32, "Instances", o_ph_bridge);
		}
	}
}