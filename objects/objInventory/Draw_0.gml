/// @description Draw the mouse items.
draw_self()

// Sets the draw colour and alpha.
draw_set_colour(c_black);
draw_set_alpha(0.7);

// Draws rectangle over screen.
draw_rectangle(0, 0, 1920, 1080, 0);

// Sets the draw colour and alpha.
draw_set_colour(c_white);
draw_set_alpha(1);
draw_sprite(sprRuneInventory, 0, x, y);

with (obj_slot)
 {
	//Get values
	var iid = global.inventory[# var_slot, 0];
	var amount = global.inventory[# var_slot, 1];

	//Draw stuff
	if (iid != item.none)
	 {
		draw_sprite(spr_item, iid, x, y); //Draw item sprite
		draw_set_font(fntMedium);
		draw_text(x+40, y+50, string(amount)); //Draw item quantity
		}
	}
//Get values
var iid = global.mouse_slot[# 0, 0];
var amount = global.mouse_slot[# 0, 1];

//Draw stuff
if (iid != item.none)
 {
	draw_sprite(spr_item, iid, mouse_x-32, mouse_y-32); //Draw item sprite
	draw_text(mouse_x+40-32, mouse_y+50-32, string(amount)); //Draw item quantity
	}


//draw_self();

//// Sets the draw colour and alpha.
//draw_set_colour(c_black);
//draw_set_alpha(0.7);

//// Draws rectangle over screen.
//draw_rectangle(0, 0, 1920, 1080, 0);

//// Sets the draw colour and alpha.
//draw_set_colour(c_white);
//draw_set_alpha(1);
//draw_sprite(sprRuneInventory, 0, x, y)

////Runes
//for(var i = 0; i < ds_grid_width(global.myRunes); ++i) {
//	var itemX = bbox_left + 236 + (i * 135);
//	var itemY = bbox_top + 480;
//	var sprite = global.myRunes[# i, Item.Sprite];
//	var object = global.myRunes[# i, Item.Object];

//	//Check for additional rows needed
//	if (i >= menuWidth && i < menuWidth * 2) {
//		itemX = bbox_left + 236 + ((i - menuWidth) * 135);
//		itemY = bbox_top + 480 + 176;
//	}
//	if (i >= menuWidth * 2 && i < menuWidth * 3) {
//		itemX = bbox_left + 236 + ((i - menuWidth * 2) * 135);
//		itemY = bbox_top + 480 + 176 + 176;
//	}
	
//	draw_sprite(sprite, 0, itemX, itemY);
//	//instance_create_layer(itemX, itemY, "RunesInventory", object);
	
//	//Amount
//	draw_set_color(c_white);
//	draw_set_alpha(1);
//	draw_set_font(fntMedium);
//	draw_text(itemX + 40, itemY + 50, global.myRunes[# i, Item.Amount]);
		
//	//Check if mouse is hovering over an item
//	if (point_in_rectangle(mouse_x, mouse_y, itemX - 48, itemY - 48, itemX + 48, itemY + 48)) {
//		draw_set_alpha(0.25);
//		draw_set_color(c_blue);
//		draw_rectangle(itemX - 48, itemY - 48, itemX + 48, itemY + 48, false);
//		draw_set_color(c_white);
//		draw_set_alpha(1);
//		currentItemSlot = i;
			
//		//Draw item info
//		if (instance_exists(global.myRunes[# i, Item.Object]) == false && draggingItem == false) {
//			currentItem = instance_create_layer(-32, -32, "RunesInventory", global.myRunes[# i, Item.Object]);
//			currentItem.level = global.myRunes[# i, Item.Level];
//			currentItem.type = global.myRunes[# i, Item.Type];
//			currentItem.name = global.myRunes[# i, Item.Name];
//			currentItem.isInMenu = true;
//		}
//	}
//}

////Dragging System
//if (mouse_check_button(mb_middle)) {
//	draggedItem = instance_find(objRuneParent, 0);
//	draggedItem.x = mouse_x;
//	draggedItem.y = mouse_y;
//	draggedItem.visible = true;
//	draggingItem = true;
//}
//if (mouse_check_button_pressed(mb_middle)) {
//	draggedItemSlot = currentItemSlot;
//}
//if (mouse_check_button_released(mb_middle)) {
//	draggedItem.x = -100;
//	draggedItem.y = -100;
//	draggingItem = false;
//	alarm[0] = 1;
//}

////Ensure only 1 item exists at a time
//if (instance_number(objRuneParent) > 1) {
//	instance_destroy(objRuneParent);
//}