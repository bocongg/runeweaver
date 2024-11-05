if (!fountainUsed){
	if (distance_to_object(objPlayer) < 20 && keyboard_check_pressed(ord("E"))){
		instance_create_layer(0, 0, "UpgradeScreenBase", objGainHealth_test);	
		if (global.playerHp != global.playerMaxHp) {
			global.playerHp += (global.playerMaxHp* 0.25);
		}
		if (global.playerHp > global.playerMaxHp) {
			global.playerHp = global.playerMaxHp;	
		}
		
		audio_play_sound(sndPlayerGainHealth, 0, 0, 1.0);
		
		instance_destroy(objInteractableTooltip);
		fountainUsed = true;
	}
}