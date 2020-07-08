enum SpaceShipSideState {
	new,
	done,
	departure,
	arrive,
	idle
}

state = SpaceShipSideState.new;
next_state = SpaceShipSideState.idle;

outside_screen_position_y = room_height - ystart + sprite_height;