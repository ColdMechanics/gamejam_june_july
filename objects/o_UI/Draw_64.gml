if(room == r_enigme_1_1) {
	#region Draw Player Ship armor
	var _player_ship = instance_find(o_player_ship, 0);

	var _armor_amount = 0;

	if (_player_ship != noone) {
		_armor_amount = _player_ship.armor;
	}

	draw_sprite(s_armor, _armor_amount, armor_x, armor_y);
	#endregion

	#region Draw Player Score

	var _score_sprite_width = sprite_get_width(s_score);
	var _score_x = room_width - _score_sprite_width - armor_x;
	var _score_y = armor_y;

	draw_set_halign(fa_right);
	//draw_sprite(s_score, 0, _score_x, _score_y);
	draw_text(_score_x + _score_sprite_width - 3, _score_y + 1, score);
	draw_set_halign(fa_left);

	#endregion
}