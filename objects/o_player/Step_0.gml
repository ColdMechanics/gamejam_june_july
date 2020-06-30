#region Set up controls for the player

right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
shift = keyboard_check(vk_shift);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);

#endregion

#region Player hit death zone
if (current_player_state != Player.idle and place_meeting(x, y, o_ph_killing)) {
	current_player_state = Player.dead;
}
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
		
		// Fix ledge collision detection
		var _falling = y - yprevious > 0;
		var _wasnt_wall = !position_meeting(x + image_xscale, yprevious, o_ph_obstacle);
		var _is_wall = position_meeting(x + image_xscale, y, o_ph_obstacle);
		
		if(_falling and _wasnt_wall and _is_wall) {
			speed_x = 0;
			
			// Move against the ledge
			while(!place_meeting(x + image_xscale, y, o_ph_obstacle)) {
				x += image_xscale;
			}
			
			// Check vertical position
			while (position_meeting(x + image_xscale, y - 1, o_ph_obstacle)) {
				y -= 1;	
			}
		}
	break;
#endregion
#region Jumping state
	case Player.jumping:
	
	break;
#endregion
#region Dead state
	case Player.dead:
		// Play explosion sound
		audio_play_sound(a_explosion, 4, false);
		sprite_index = s_player_death;

		alarm[0] = 110;
		current_player_state = Player.idle;
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