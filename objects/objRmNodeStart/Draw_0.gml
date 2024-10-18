// Draws the upgrade object.
draw_self();
var roomID = object_get_name(objRmNodeStart);

if (global.stage != 0 && ds_list_find_index(global.stagesCleared, roomID) != -1){
	draw_sprite(sprRmCombat, 4, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
} else if (mouse_over)
{
	// Draws the glow highlight.
	draw_sprite(sprRmCombat, 1, x, y);
}