// Set Sprite
sprite_index = sprInvButton;
image_index = 1;

// Play Audio
audio_play_sound(sndButtonClick, 0, 0, 1.0, undefined, 1.0);


instance_activate_layer("InventoryScreen");
instance_activate_layer("Buttons");
instance_activate_layer("RunesInventory");
instance_deactivate_layer("Instances");
instance_deactivate_layer("MapNodes");
instance_deactivate_layer("UpgradeScreen");
