randomize();

inventory = new Inventory();

inventory.item_add("Fire Rune", 3, sprRuneFire1Equip);
inventory.item_add("Ice Rune", 2, sprRuneIce1Equip);
inventory.item_add("Wind Rune", 10, sprRuneWind1Equip);

inventory.item_subtract("Fire Rune", 2);
inventory.item_subtract("Ice Rune", 10);

// UI information //


inventory_coloumns = 7;
inventory_rows = 3;

ui_padding_x = 60;
ui_padding_y = 340;
ui_border_size = 16;
ui_inventory_padding_left = 144;
ui_inventory_padding_right = 95;
ui_inventory_padding_bottom = 16;
ui_inventory_padding_top = 368;
ui_inventory_box_x = 119;
ui_inventory_box_y = 160;
ui_inventory_margin = 16;