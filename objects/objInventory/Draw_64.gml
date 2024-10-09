draw_self();

var _xx = bbox_left + 236;
var _yy = bbox_top + 480;
//draw_sprite(spr_Inventory_Selected, item_pos_index, _xx, _yy + _item_x);
instance_create_layer(_xx, _yy, "RunesInventory", objFireRune1)
instance_create_layer(_xx + 135, _yy, "RunesInventory", objIceRune1)