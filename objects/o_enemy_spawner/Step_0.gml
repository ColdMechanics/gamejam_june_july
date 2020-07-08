var _enemy_number = instance_number(o_enemy_space_ship_paremt);

if(_enemy_number == 0) {
	var _enemies_to_spawn = 3 + score div 10;
	
	spawn_enemies(_enemies_to_spawn, o_space_enemy_1);
	
	_enemies_to_spawn = 1 + score div 20;
	spawn_enemies(_enemies_to_spawn, o_space_enemy_2);
}