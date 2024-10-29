//fade in 
alpha += alphaSpd;
alpha = clamp(alpha, 0, 1);

if (!instance_exists(objLoseReplayButton)){
	instance_create_layer(655, 746, "PauseScreenButtons", objLoseReplayButton);
	instance_create_layer(1271, 746, "PauseScreenButtons", objLoseQuitGameButton);
}