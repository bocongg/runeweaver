var _pos = 0;
var _type = item;
var _sprite = sprite_index;

with(objInventory)
    {
    while (_pos < 3)
        {
        if (item_array[_pos][item_type] == _type)
            {
            break;
            }
        else
            {
            _pos += 1;
            }
        }
    if (_pos > 2)
        {
        _pos = 0;
        while (_pos < 3)
            {
            if (item_array[_pos][item_type] == itemNone)
                {
                break;
                }
            else
                {
                _pos += 1;
                }
            }
        }
if (_pos < 3)
    {
    item_array[_pos][item_type] = _type;
    item_array[_pos][item_sprite] = _sprite;
    item_array[_pos][item_amount] += 1;
    with(other) instance_destroy();
    }
    }