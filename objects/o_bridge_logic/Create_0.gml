/// @description Initialize bridge variables

var _bridge_completed = variable_global_exists("part_1_completed") and variable_global_get("part_1_completed") and
						variable_global_exists("part_2_completed") and variable_global_get("part_2_completed") and 
						variable_global_exists("part_3_completed") and variable_global_get("part_3_completed") and 
						variable_global_exists("part_4_completed") and variable_global_get("part_4_completed");
if (_bridge_completed) {
	var _exit_sign = instance_find(o_exit_sign, 0);
	_exit_sign.flashing = true;
	_exit_sign.alarm[0] = 10;
}