var _player_ship = instance_find(o_player_ship, 0);

if(_player_ship == noone) exit;

alarm[0] = fire_rate;

// Test if in the room
if(not point_in_rectangle(x, y, 0, 0, room_width, room_height)) exit;

var _distance = point_distance(x, y, _player_ship.x, _player_ship.y);
var _direction = point_direction(x, y, _player_ship.x, _player_ship.y);

if (_distance <= attack_range) {
	var _laser = instance_create_layer(x, y, "Instances", o_enemy_laser);
	
	_laser.speed = 3;
	_laser.image_angle = _direction;
	_laser.direction = _direction;
}