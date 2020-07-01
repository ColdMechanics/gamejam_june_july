/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 6E651737
/// @DnDApplyTo : eb5a709d-eb92-43c7-9609-a2ccdb0fd38c
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-46"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_blocblanc"
/// @DnDSaveInfo : "object" "f5ae9ece-24d3-4d5e-9ad0-7d5b36c09687"
with(o_piedestallune) {
var l6E651737_0 = instance_place(x + 0, y + -46, o_blocblanc);
}
if ((l6E651737_0 > 0))
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 77923684
	/// @DnDApplyTo : a6f07874-879f-4837-934f-caac27047774
	/// @DnDParent : 6E651737
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-46"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_blocnoir"
	/// @DnDSaveInfo : "object" "b3af63b7-5b61-482c-8a10-9d2438aa75b9"
	with(o_piedestalcarre) {
	var l77923684_0 = instance_place(x + 0, y + -46, o_blocnoir);
	}
	if ((l77923684_0 > 0))
	{
		/// @DnDAction : YoYo Games.Collisions.If_Object_At
		/// @DnDVersion : 1.1
		/// @DnDHash : 08CDAA1C
		/// @DnDApplyTo : 1cc7fe7f-fa1c-44e8-92df-77a4377b5d9c
		/// @DnDParent : 77923684
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "-46"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "object" "o_blocmauve"
		/// @DnDSaveInfo : "object" "1d9552f3-a842-42c3-9628-dc82a853cffa"
		with(o_piedestalcercle) {
		var l08CDAA1C_0 = instance_place(x + 0, y + -46, o_blocmauve);
		}
		if ((l08CDAA1C_0 > 0))
		{
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 1258D9BA
			/// @DnDApplyTo : 6911ee1f-1e13-4f2e-807b-9728413dcb85
			/// @DnDParent : 08CDAA1C
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "-46"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "object" "o_blocbleu"
			/// @DnDSaveInfo : "object" "f9676ce5-433a-44a2-965d-115dee4f2c59"
			with(o_piedestaltriangle) {
			var l1258D9BA_0 = instance_place(x + 0, y + -46, o_blocbleu);
			}
			if ((l1258D9BA_0 > 0))
			{
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A8C69B8
				/// @DnDParent : 1258D9BA
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "visible"
				visible = true;
			
				/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
				/// @DnDVersion : 1
				/// @DnDHash : 508141B3
				/// @DnDParent : 1258D9BA
				gravity = 1;
			}
		}
	}
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4B606789
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_ph_obstacle"
/// @DnDSaveInfo : "object" "341e9771-6f5a-40ac-a683-391a7df3849d"
var l4B606789_0 = instance_place(x + 0, y + 0, o_ph_obstacle);
if ((l4B606789_0 > 0))
{
	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 1E84F793
	/// @DnDParent : 4B606789
	/// @DnDArgument : "force" "0"
	gravity = 0;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 78340F3A
	/// @DnDParent : 4B606789
	speed = 0;
}