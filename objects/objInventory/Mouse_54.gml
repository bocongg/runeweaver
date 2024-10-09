if !(item_array[item_pos][item_type] == itemNone)
    {
    var _type = item_array[item_pos][item_type];
    var _sprite = item_array[item_pos][item_sprite];
    item_array[item_pos][item_amount] += -1;
    var _inst = instance_create_layer(mouse_x, mouse_y, "Inventory", objItemRune);
    with(_inst)
        {
        item = _type;
        sprite_index = _sprite;
        }
    if (item_array[item_pos][item_amount] < 1)
        {
        item_array[item_pos][item_type] = itemNone;
        }
    }