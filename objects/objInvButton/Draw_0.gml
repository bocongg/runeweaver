// Draw Self
draw_self();

if (global.showInvTooltip){
	if (global.stage == 0) {
		with(objInvButton) {draw_sprite(sprInvTooltip1, 0, x, y-150);}
	}
}