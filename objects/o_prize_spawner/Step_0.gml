if(score >= target_score and global.part_1_completed == false && had_spawn_one == false) {
	had_spawn_one = true;
	
	with (o_enemy_spawner) {
		instance_destroy();
	}
	with (o_enemy_space_ship_paremt) {
		instance_destroy();
	}
	
	audio_stop_all();
	
	var _piece = instance_create_layer(room_height / 2, room_width / 2, "Instances", o_bridge_prize1);
	_piece.image_xscale = 0.5;
	_piece.image_yscale = 0.5;
} else if (global.part_1_completed == true && had_spawn_one == true && alarm[0] == -1) {
	alarm[0] = 180;
}