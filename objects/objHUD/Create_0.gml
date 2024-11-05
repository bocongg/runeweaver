//make sure this shows up on top
depth = -9000;

//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

if (!instance_exists(objInventory)){
	instance_create_layer(_camX + 1664, _camY + 992, "UpgradeScreenBase", objInvButton);
}