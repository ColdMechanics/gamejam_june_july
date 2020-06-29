/// @description move(collision_object)
/// @param collision_object

var _collision_object = argument0;

// Horizontal collision
if(place_meeting(x + speed_x, y, _collision_object)) {
	while(!place_meeting(x + sign(speed_x), y, _collision_object)) {
		x += sign(speed_x);
	}
	speed_x = 0;
}

// Vertical collision
if(place_meeting(x, y + speed_y, _collision_object)) {
	while(!place_meeting(x, y + sign(speed_y), _collision_object)) {
		y += sign(speed_y);
	}
	speed_y = 0;
}

x += speed_x;
y += speed_y;