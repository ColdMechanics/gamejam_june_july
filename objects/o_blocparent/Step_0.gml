/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A28066A
/// @DnDArgument : "var" "carried"
/// @DnDArgument : "value" "true"
if(carried == true)
{
	/// @DnDAction : YoYo Games.Movement.Snap_Position
	/// @DnDVersion : 1
	/// @DnDHash : 5199033E
	/// @DnDParent : 6A28066A
	/// @DnDArgument : "xsnap" "o_player.x+16*o_player.image_xscale"
	/// @DnDArgument : "ysnap" "o_player.y"
	move_snap(o_player.x+16*o_player.image_xscale, o_player.y);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5998F035
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 74E492AF
	/// @DnDParent : 5998F035
	/// @DnDArgument : "var" "placedontop"
	/// @DnDArgument : "value" "false"
	if(placedontop == false)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Start
		/// @DnDVersion : 1
		/// @DnDHash : 7D50C9AB
		/// @DnDParent : 74E492AF
		x = xstart;
		y = ystart;
	}
}