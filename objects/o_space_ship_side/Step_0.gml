switch (state) {
	#region New state
	case SpaceShipSideState.new:
		if(keyboard_check_pressed(vk_space) and place_meeting(x, y, o_player)) {
			var _player = instance_find(o_player, 0);
		
			_player.current_player_state = Player.door;
			
			// Departure animation/cinematic
			state = SpaceShipSideState.idle;
			next_state = SpaceShipSideState.departure;
			alarm[0] = 60;
		}
	break;
	#endregion
	#region Departure state
	case SpaceShipSideState.departure:
		speed_y -= 0.5;
		move(o_ph_obstacle);
	break;
	#endregion
	#region Arrive state
	case SpaceShipSideState.arrive:
		speed_y = (ystart - y) / 2;
		
		if(y >= ystart) {
			y = ystart;
			state = SpaceShipSideState.done;
		} else {
			move(o_ph_obstacle);	
		}
	break;
	#endregion
	#region Idle state
	case SpaceShipSideState.idle:
		if (alarm[0] == -1) {
			state = next_state;
		}
	break;
	#endregion
}