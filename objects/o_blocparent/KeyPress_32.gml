/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7A231A4E
/// @DnDApplyTo : 823c7894-724d-4b4a-8e68-281647f5d831
/// @DnDArgument : "var" "playerpresent"
/// @DnDArgument : "value" "true"
with(o_piedestalparent) var l7A231A4E_0 = playerpresent == true;
if(l7A231A4E_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19055F80
	/// @DnDApplyTo : 823c7894-724d-4b4a-8e68-281647f5d831
	/// @DnDParent : 7A231A4E
	/// @DnDArgument : "var" "blocontop"
	/// @DnDArgument : "value" "false"
	with(o_piedestalparent) var l19055F80_0 = blocontop == false;
	if(l19055F80_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6218D820
		/// @DnDParent : 19055F80
		/// @DnDArgument : "var" "carried"
		/// @DnDArgument : "value" "true"
		if(carried == true)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CC213DB
			/// @DnDInput : 3
			/// @DnDParent : 6218D820
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "placedontop"
			/// @DnDArgument : "var_1" "carried"
			/// @DnDArgument : "var_2" "o_player.carrying"
			placedontop = true;
			carried = false;
			o_player.carrying = false;
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 31817A0F
			/// @DnDParent : 6218D820
			/// @DnDArgument : "x" "o_piedestalparent.x"
			/// @DnDArgument : "y" "o_piedestalparent.y-46"
			x = o_piedestalparent.x;
			y = o_piedestalparent.y-46;
		}
	}
}

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