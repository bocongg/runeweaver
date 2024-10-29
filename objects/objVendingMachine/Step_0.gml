if (!vendingUsed){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(1920/2, 1080/2, "UpgradeScreenBase", objGetShopItemsScreen);
		vendingUsed = true;
	}
}

if (vendingUsed){
	image_index = 1;
	instance_destroy(objInteractableTooltip);
}