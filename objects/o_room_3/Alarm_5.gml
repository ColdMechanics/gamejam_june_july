alarm[6] = room_speed * 5;
o_player.is_affected_by_wind = true;

o_flower.sprite_index = s_flower_wind;
o_flower.image_xscale = o_player.is_wind_going_left ? -1 : 1;