/// @description If the player leave the room without winning, fail the enigma

switch(room) {
	case r_enigme_1:
		global.part_1_completed = false;
	break;
	case r_enigme_2:
		global.part_2_completed = false;
	break;
	case r_paco:
		global.part_3_completed = false;
	break;
	case r_enigme4:
		global.part_4_completed = false;
	break;
}