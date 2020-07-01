/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 64843F6B
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "976a5654-cfde-4fa7-92e2-52027ff6516d"
var l64843F6B_0 = instance_place(x + 0, y + 0, o_player);
if ((l64843F6B_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 248133F9
	/// @DnDParent : 64843F6B
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "playerpresent"
	playerpresent = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5B863BCD
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3AC82DC9
	/// @DnDParent : 5B863BCD
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "playerpresent"
	playerpresent = false;
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 3F49AC64
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-46"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_blocparent"
/// @DnDSaveInfo : "object" "cb365ea7-923e-4085-b762-5298dcc9e016"
var l3F49AC64_0 = instance_place(x + 0, y + -46, o_blocparent);
if ((l3F49AC64_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2F307DEE
	/// @DnDParent : 3F49AC64
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "blocontop"
	blocontop = true;
}