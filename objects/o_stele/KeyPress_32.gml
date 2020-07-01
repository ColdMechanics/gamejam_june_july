/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 443FE9E6
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "976a5654-cfde-4fa7-92e2-52027ff6516d"
var l443FE9E6_0 = instance_place(x + 0, y + 0, o_player);
if ((l443FE9E6_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 486CB0BE
	/// @DnDInput : 4
	/// @DnDParent : 443FE9E6
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "expr_3" "false"
	/// @DnDArgument : "var" "o_piedestalparent.blocontop"
	/// @DnDArgument : "var_1" "o_blocparent.carried"
	/// @DnDArgument : "var_2" "o_blocparent.placedontop"
	/// @DnDArgument : "var_3" "o_player.carrying"
	o_piedestalparent.blocontop = false;
	o_blocparent.carried = false;
	o_blocparent.placedontop = false;
	o_player.carrying = false;
}