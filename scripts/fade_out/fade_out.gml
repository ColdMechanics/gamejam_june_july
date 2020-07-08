if(image_alpha > 0) {
	image_alpha -= fade_speed;
} else {
	instance_destroy();
}