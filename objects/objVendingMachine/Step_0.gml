if (global.vendingTimes < 3){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		if (!instance_exists(objGetShopItemsScreen)){
			instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGetShopItemsScreen);
		}
	}
} else if (global.vendingTimes >= 3) {
	image_index = 1;
	instance_destroy(objInteractableTooltip);
}