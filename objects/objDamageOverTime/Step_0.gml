duration -=1;
if (duration <= 0) {
	instance_destroy();
}

if(duration == 242) alarm[0] = 1;
if(duration == 182) alarm[0] = 1;
if(duration == 122) alarm[0] = 1;
if(duration == 62) alarm[0] = 1;
if(duration == 2) alarm[0] = 1;

x = objPlayer.x;
y = objPlayer.y;

image_xscale -= 0.001;
image_yscale = image_xscale;

