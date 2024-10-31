getShopItems()

if (!audio_is_playing(sndVendingMachine)){
	audio_play_sound(sndVendingMachine, 0, 1, 1.0, undefined, 1.0);
}

if (!instance_exists(objCloseShop)){
	instance_create_layer(1611, 197, "Buttons", objCloseShop);
}