// If left mouse button is released...
if (mouse_check_button_released(mb_left))
{
	// Assign Variable - Sets the mouse to unclick.
	is_clicked = false;
}

if (global.showInvTooltip){
	if (global.stage == 0) {
		with(objInvButton) {instance_create_layer(x, y-150, "UpgradeScreenBase", objInvTooltip1)}
		//with(objInvButton) {draw_sprite(sprInvTooltip1, 0, x, y-150);}
	} else {
		instance_destroy(objInvTooltip1)
	}
}