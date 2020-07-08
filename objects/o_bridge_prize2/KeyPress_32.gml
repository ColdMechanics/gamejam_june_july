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
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 2E4132AA
	/// @DnDParent : 31E7102C
	/// @DnDArgument : "value" "true"
	/// @DnDArgument : "var" "part_2_completed"
	global.part_2_completed = true;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 08F82204
	/// @DnDParent : 31E7102C
	/// @DnDArgument : "soundid" "a_win"
	/// @DnDSaveInfo : "soundid" "7c07f145-ca21-473a-bfd1-f4b03bbd64c5"
	audio_play_sound(a_win, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 342A8F06
	/// @DnDParent : 31E7102C
	instance_destroy();
}