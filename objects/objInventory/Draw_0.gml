draw_self();
var _item_x = item_pos * 176;
var _xx = bbox_left + 236;
var _yy = bbox_top + 480;
// draw_sprite(sprRuneEquipSlot, item_pos_index, _xx + _item_x, _yy);

// item_pos_index += 0.2;
for(var i = 0; i < 3; i += 1)
    {
    if !(item_array[i, item_type] == itemNone)
        {
			draw_sprite(item_array[i, item_sprite], 0, _xx, _yy);
			draw_text(_xx + 40, _yy + 45,  + string(item_array[i, item_amount]));
        }
    _yy += 176;
}

for (var i = 0; i < 3; i += 1){
	
}