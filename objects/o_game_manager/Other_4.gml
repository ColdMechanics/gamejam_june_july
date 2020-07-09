/// @description If the player leave the room without winning, fail the enigma

// Hide the cursor
window_set_cursor(cr_none);

switch(room) {
	case r_enigma_1:
		global.part_1_completed = false;
	break;
	case r_enigma_1_1:
		// See a cross cursor for the enigma shooter part
		window_set_cursor(cr_cross);
	break;
	case r_enigme_2:
		global.part_2_completed = false;
	break;
	case r_paco:
		global.part_3_completed = false;
		o_player.can_dash = false;
	break;
	case r_enigme4:
		global.part_4_completed = false;
	break;
}

