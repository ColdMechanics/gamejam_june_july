switch (current) {
	case SpaceShipSideState.new:
		if(keyboard_check_pressed(vk_space)) {
			var _player = instance_find(o_player, 0);
		
			_player.current_player_state = Player.door;
			current = SpaceShipSideState.departure;
		}
	break;
	case SpaceShipSideState.departure:
		y -= speed_y - 9;
		++speed_y;
	break;
	case SpaceShipSideState.arrive:
		y += speed_y;
		
		if(y >= ystart) {
			y = ystart;
			current = SpaceShipSideState.done;
		}
	break;
}