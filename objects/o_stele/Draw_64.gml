/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 0935DF9D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "976a5654-cfde-4fa7-92e2-52027ff6516d"
var l0935DF9D_0 = instance_place(x + 0, y + 0, o_player);
if ((l0935DF9D_0 > 0))
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5E43863C
	/// @DnDParent : 0935DF9D
	/// @DnDArgument : "x" "-50"
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-500"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""
	/// @DnDArgument : "var" ""Pour obtenir l'objet de votre desir,\nL'enigme qui suit devra etre resolue.\n\nSur les piedestaux des blocs devront gesir,\nPour reussir la suite devra etre lue.\n\nLes bons pigments devront etre choisis,\nEt dans le bon ordre ils devront etre mis.\n\nIgnorer le poeme qui suit n'est pas une option,\nCar dans ses vers se trouve la solution.\n\n\nDe par les oceans j'ai navigue,\net dans cette jungle je me suis arrete.\nAlors que la lune veille sur mon labeur,\nj'enterre ces pieces d'or si cheres a mon coeur.""
	draw_text(x + -50, y + -500,  + string("Pour obtenir l'objet de votre desir,\nL'enigme qui suit devra etre resolue.\n\nSur les piedestaux des blocs devront gesir,\nPour reussir la suite devra etre lue.\n\nLes bons pigments devront etre choisis,\nEt dans le bon ordre ils devront etre mis.\n\nIgnorer le poeme qui suit n'est pas une option,\nCar dans ses vers se trouve la solution.\n\n\nDe par les oceans j'ai navigue,\net dans cette jungle je me suis arrete.\nAlors que la lune veille sur mon labeur,\nj'enterre ces pieces d'or si cheres a mon coeur."));
}