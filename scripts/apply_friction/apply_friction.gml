/// @description apply_friction(amount)
/// @param amount

var _amount = argument0;

// If we are moving
if (speed_x != 0) {
	if(abs(speed_x) - _amount > 0) {
		speed_x -= _amount * image_xscale;
	} else {
		speed_x = 0;
	}
}