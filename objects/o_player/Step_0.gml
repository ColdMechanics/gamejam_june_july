#region Set up controls for the player

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
shift = keyboard_check(vk_shift);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);

#endregion

#region State Machine
switch(current_player_state) {
#region Moving state
	case Player.moving:	
		if(speed_x == 0) {
			sprite_index = s_player_idle;
		} else {
			sprite_index = s_player_walk;
			
			image_speed = shift ? 2 : 1;
		}
		// Check if player if on the ground
		if(!place_meeting(x, y + 1, o_ph_obstacle)) {
			speed_y += gravity_acceleration;
			
			// Player is in the air
			sprite_index = s_player_jump;
			image_index = (speed_y > 0);
			
			// Control the jump height
			if (up_release and speed_y < -6) {
				speed_y = -3;
			}
		} else {
			speed_y = 0;
			
			// Jumping code
			if (up and can_jump) {
				speed_y = -10;
			}
		}
		// Change direction of sprite
		if(speed_x != 0) {
			image_xscale = sign(speed_x);
		}
		// Check moving right or left
		if(right or left) {
			speed_x += (right - left) * acceleration;
			var _current_max = shift ? running_max_speed : max_speed;
			speed_x = clamp(speed_x, -_current_max, _current_max);
		} else {
			apply_friction(acceleration);
		}
		
		move(o_ph_obstacle);
	break;
#endregion
#region Jumping state
	case Player.jumping:
	
	break;
#endregion
#region Dead state
	case Player.dead:
		current_player_state = Player.idle;
		// Play explosion sound

		image_index = 3;

		alarm[0] = 60;
	break;
#endregion
#region Door state
	case Player.door:
		image_alpha = 0;
	break;
#endregion
#region Idle state
	case Player.idle:
		// Do nothing!
	break;
#endregion
}


#endregion