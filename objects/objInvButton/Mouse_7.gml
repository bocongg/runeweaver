// Set Sprite
sprite_index = sprInvButton;
image_index = 1;

// Play Audio
audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);

if (!_inventoryOpen){
	//instance_create_layer(1920/2, 1080/2, "InventoryScreen", objInventory);
	instance_activate_layer("InventoryScreen");
	instance_activate_layer("Buttons");
	instance_deactivate_layer("MapNodes");
	instance_deactivate_layer("UpgradeScreen");
	_inventoryOpen = true;
} else {
	//instance_destroy(objInventory);
	//layer_destroy_instances("RunesInventory");
	instance_deactivate_layer("InventoryScreen");
	instance_deactivate_layer("Buttons");
	instance_activate_layer("MapNodes");
	instance_activate_layer("UpgradeScreen");
	_inventoryOpen = false;
}