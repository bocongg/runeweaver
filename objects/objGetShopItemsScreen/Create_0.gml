getShopItems()

if (!audio_is_playing(sndVendingMachineAmbient)){
	audio_play_sound(sndVendingMachineAmbient, 0, 1, 0.5);
}

if (!instance_exists(objCloseShop)){
	instance_create_layer(1611, 197, "Buttons", objCloseShop);
}