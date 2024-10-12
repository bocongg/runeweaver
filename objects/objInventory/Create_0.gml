randomize();
draw_set_font(fntLarge);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

item_pos = 0;
item_pos_index = 0;
item_array = array_create(3, [ ], [ ], [ ]);
for(var i = 0; i < 3; i += 1)
    {
    item_array[i][item_type] = itemNone;
    item_array[i][item_sprite] = -1;
    item_array[i][item_amount] = 0;
    }
