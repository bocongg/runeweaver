draw_self();
var nodeSpr = object_get_sprite(objRmNode3);
var roomID = object_get_name(objRmNode3);

// If global stage > 2 and found in list of stages cleared, room node should be locked and show completed
if (global.stage > 2 && ds_list_find_index(global.stagesCleared, roomID) != -1){
	draw_sprite(nodeSpr, 4, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
// If global stage > 2 and NOT found in list of stages cleared, room node should be locked and show UNcompleted
} else if (global.stage > 2 && ds_list_find_index(global.stagesCleared, roomID) == -1){
	draw_sprite(nodeSpr, 3, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
// If global stage < 2, room node should be pending
} else if (global.stage < 2){
	draw_sprite(nodeSpr, 2, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
// If global stage = 2, but previous room not cleared, room node should be locked and show UNcompleted
} else if (global.stage == 2 && ds_list_find_index(global.stagesCleared, "objRmNode1") == -1){
	draw_sprite(nodeSpr, 3, x, y);
	if (mouse_check_button_pressed(mb_left)) {
		// Sets click state to false.
		is_clicked = false;
	}
// If global stage = 2, room node is currently unlocked and can be selected
} else if (mouse_over)
	{
	// Draws the glow highlight.
	draw_sprite(nodeSpr, 1, x, y);
}