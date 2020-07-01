/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 06EA70DC
/// @DnDArgument : "var" "_le_piedestal"
/// @DnDArgument : "value" "instance_place(x, y, o_piedestalparent)"
var _le_piedestal = instance_place(x, y, o_piedestalparent);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 75223F01
/// @DnDArgument : "var" "_le_piedestal"
/// @DnDArgument : "op" "2"
if(_le_piedestal > 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 19055F80
	/// @DnDParent : 75223F01
	/// @DnDArgument : "var" "_le_piedestal.blocontop"
	/// @DnDArgument : "value" "false"
	if(_le_piedestal.blocontop == false)
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
			/// @DnDArgument : "x" "_le_piedestal.x"
			/// @DnDArgument : "y" "_le_piedestal.y-46"
			x = _le_piedestal.x;
			y = _le_piedestal.y-46;
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
	/// @DnDHash : 29A59645
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