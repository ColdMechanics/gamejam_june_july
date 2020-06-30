/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 27BF22E0
/// @DnDArgument : "var" "carried"
/// @DnDArgument : "value" "true"
if(carried == true)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 770D2989
	/// @DnDParent : 27BF22E0
	x = xstart;
	y = ystart;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 53845059
	/// @DnDInput : 2
	/// @DnDParent : 27BF22E0
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "o_player.carrying"
	/// @DnDArgument : "var_1" "carried"
	o_player.carrying = false;
	carried = false;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6B04AB6C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "976a5654-cfde-4fa7-92e2-52027ff6516d"
var l6B04AB6C_0 = instance_place(x + 0, y + 0, o_player);
if ((l6B04AB6C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49CD94F2
	/// @DnDApplyTo : 976a5654-cfde-4fa7-92e2-52027ff6516d
	/// @DnDParent : 6B04AB6C
	/// @DnDArgument : "var" "carrying"
	/// @DnDArgument : "value" "false"
	with(o_player) var l49CD94F2_0 = carrying == false;
	if(l49CD94F2_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 517E9FEE
		/// @DnDInput : 2
		/// @DnDParent : 49CD94F2
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "o_player.carrying"
		/// @DnDArgument : "var_1" "carried"
		o_player.carrying = true;
		carried = true;
	}
}