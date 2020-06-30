/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6A28066A
/// @DnDArgument : "var" "carried"
/// @DnDArgument : "value" "true"
if(carried == true)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D6F0B96
	/// @DnDParent : 6A28066A
	/// @DnDArgument : "var" "o_player.speed_x"
	/// @DnDArgument : "op" "2"
	if(o_player.speed_x > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Snap_Position
		/// @DnDVersion : 1
		/// @DnDHash : 5199033E
		/// @DnDParent : 5D6F0B96
		/// @DnDArgument : "xsnap" "o_player.x+16"
		/// @DnDArgument : "ysnap" "o_player.y"
		move_snap(o_player.x+16, o_player.y);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17F1D1A8
	/// @DnDParent : 6A28066A
	/// @DnDArgument : "var" "o_player.speed_x"
	/// @DnDArgument : "op" "1"
	if(o_player.speed_x < 0)
	{
		/// @DnDAction : YoYo Games.Movement.Snap_Position
		/// @DnDVersion : 1
		/// @DnDHash : 12FAD4EE
		/// @DnDParent : 17F1D1A8
		/// @DnDArgument : "xsnap" "o_player.x-16"
		/// @DnDArgument : "ysnap" "o_player.y"
		move_snap(o_player.x-16, o_player.y);
	}
}