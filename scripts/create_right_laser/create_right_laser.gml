var _distance = sprite_get_width(sprite_index) / 4;
var _angle = 60;

var _x = x + lengthdir_x(_distance, image_angle - _angle + hspeed);
var _y = y + lengthdir_y(_distance, image_angle - _angle + vspeed);

var _laser = instance_create_layer(_x, _y, "Instances", o_laser);
_laser.direction = image_angle;
_laser.speed = 8;
_laser.image_angle = image_angle;