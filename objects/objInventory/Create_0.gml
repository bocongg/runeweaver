scr_init_inventory();
scr_create_inventory();

scr_gain_item(item.firerune1, 99);
scr_gain_item(item.firerune2, 99);
scr_gain_item(item.icerune1, 99);
scr_gain_item(item.icerune2, 99);
scr_gain_item(item.windrune1, 99);
scr_gain_item(item.windrune2, 99);

//scr_gain_item(item.icerune1, 2);
//global.inventory[# 5, 0] = item.icerune1;
//scr_slot_modify_amount(5, 2, true);


//#macro inventorySlots 21

//rowLength = 7;
//inventory = array_create(inventorySlots, -1);

////for(var i = 0; i < inventorySlots; i += 1)
////    {
////    inventory[i][runeType] = -1;
////    inventory[i][runeAmount] = 0;
////    }
	
//inventory[0] = objIceRune1;
////inventory[0][runeAmount] = 0;
//inventory[1] = objFireRune1;
////inventory[1][runeAmount] = 3;
//inventory[2] = objIceRune1;

//global.myRunes = ds_grid_create(0, Item.Height);

//currentItem = undefined;
//currentItemSlot = undefined;
//menuWidth = 7;

//draggedItem = undefined;
//draggingItem = false;
//draggedItemSlot = undefined;

//AddItem(global.myRunes, ["Fire Rune Level 1", sprRuneFire1Equip, 2, Type.Fire, 1, objFireRune1]);
//AddItem(global.myRunes, ["Fire Rune Level 2", sprRuneFire2Equip, 3, Type.Fire, 2, objFireRune2]);
//AddItem(global.myRunes, ["Ice Rune Level 1", sprRuneIce1Equip, 1, Type.Ice, 1, objIceRune1]);
//AddItem(global.myRunes, ["Ice Rune Level 2", sprRuneIce2Equip, 3, Type.Ice, 2, objIceRune2]);
//AddItem(global.myRunes, ["Wind Rune Level 1", sprRuneWind1Equip, 4, Type.Wind, 1, objWindRune1]);
//AddItem(global.myRunes, ["Wind Rune Level 2", sprRuneWind2Equip, 6, Type.Wind, 2, objWindRune2]);
