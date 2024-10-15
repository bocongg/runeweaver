// inventory stuff
#macro itemNone 0
#macro fireRune1 1
#macro fireRune2 2
#macro iceRune1 3
#macro iceRune2 4
#macro windRune1 5
#macro windRune2 6
#macro frostfireRune 7
#macro snowstormRune 8
#macro inernoRune 9
#macro prismRune 10

#macro runeType 0
#macro runeAmount 1

// Add runes to inventory
function inventorySearch(rootObject, itemType){
	for (var i = 0; i < inventorySlots; i += 1){
		if (rootObject.inventory[i] == itemType){
			return(i);
		}
	}
	return(-1);
}

function inventoryRemove(rootObject, itemType){
	var _slot = inventorySearch(rootObject, itemType);
	if (_slot != -1){
		//with(rootObject) inventory[_slot][runeAmount] -= 1;
		//if (inventory[_slot][runeAmount] == 0){
			with(rootObject) inventory[_slot] = -1;
			return true;
		//}else return true;
	}
	else return false;
}

function inventoryAdd(rootObject, itemType){
	var _slot = inventorySearch(rootObject, -1);
	if (_slot != -1){
		with(rootObject){
			inventory[_slot] = itemType;
			//inventory[_slot][runeAmount] += 1;
		}
		return true;
	}
	else return false;
}