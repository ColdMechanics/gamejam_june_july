/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 31E7102C
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "976a5654-cfde-4fa7-92e2-52027ff6516d"
var l31E7102C_0 = instance_place(x + 0, y + 0, o_player);
if ((l31E7102C_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77EB6F0A
	/// @DnDParent : 31E7102C
	/// @DnDArgument : "var" "visible"
	/// @DnDArgument : "value" "true"
	if(visible == true)
	{
		/// @DnDAction : YoYo Games.Common.Set_Global
		/// @DnDVersion : 1
		/// @DnDHash : 2E4132AA
		/// @DnDParent : 77EB6F0A
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "var" "part_4_completed"
		global.part_4_completed = true;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 08F82204
		/// @DnDParent : 77EB6F0A
		/// @DnDArgument : "soundid" "a_win"
		/// @DnDSaveInfo : "soundid" "7c07f145-ca21-473a-bfd1-f4b03bbd64c5"
		audio_play_sound(a_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 342A8F06
		/// @DnDParent : 77EB6F0A
		instance_destroy();
	}
}