/// @description hit_enemy()

instance_destroy();
other.armor -=1;

if(other.armor == 0) {
	score += other.score_amount;
}

audio_play_sound(a_hit, 2, false);