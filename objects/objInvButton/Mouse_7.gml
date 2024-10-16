// Inherit the parent event
event_inherited();

if (!_inventoryOpen){
	instance_create_layer(1920/2, 1080/2, "InventoryScreen", objInventory);
	_inventoryOpen = true;
} else {
	instance_destroy(objInventory);
	layer_destroy_instances("RunesInventory");
	_inventoryOpen = false;
}
