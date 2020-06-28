/// @description move(collision_object)
/// @param collision_object

var _collision_object = argument0;

// Check player at the door
if(place_meeting(x, y, _collision_object)) {
	
	// Hide the player
	image_alpha = 0;
	
	// Play door open sound
	
	// Open the Door
	_collision_object.currentDoorState = DoorState.Open;
	
	// Transition to new room
	_collision_object.alarm[0] = 60;
}