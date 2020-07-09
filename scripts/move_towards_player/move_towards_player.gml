/// @description move_towards_player()

var _player_ship = instance_find(o_player_ship, 0);

if (_player_ship == noone) exit;

var _player_direction = point_direction(x, y, _player_ship.x, _player_ship.y);
image_angle = direction;
motion_add(_player_direction, acceleration);

if(speed > max_speed) {
	speed = max_speed;	
}