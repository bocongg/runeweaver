//float in place
floatDir += floatSpd;
y = ystart + dsin(floatDir);

if (distance_to_object(objPlayer) < 20){
	image_index = 1;
} else {
	image_index = 0;
}