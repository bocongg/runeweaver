/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!_inventoryOpen){
	instance_create_layer(1920/2, 1080/2, "Inventory", objInventory);
	_inventoryOpen = true;
} else {
	instance_destroy(objInventory);
	depth = -9000;
	layer_destroy_instances("RunesInventory");
	_inventoryOpen = false;
}