if (!instance_exists(objNextButton)){
	if global.replayed {
	instance_create_layer(1657, 986, "Buttons", objNextButton);
} else if (image_speed > 0)
	{
	    if (image_index >= image_number - 1){
			instance_create_layer(1657, 986, "Buttons", objNextButton);
		}	
	}
	
}