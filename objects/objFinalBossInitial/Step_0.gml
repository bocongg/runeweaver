event_inherited();

tick++;

//reset speed to normal at the start of each step
chaseSpd = baseSpd; 
freezeEnemy = false;

for (var i = array_length(debuffs) - 1; i >= 0; --i) {
   var _debuff = debuffs[i];
   var _tick_rate = round(_debuff[DebuffInfo.TICK_RATE]);
 
   //apply speed reduction if the debuff has SPEED_REDUCTION
   if(_debuff[DebuffInfo.SPEED_REDUCTION] != undefined) {
		chaseSpd = baseSpd * (1 - _debuff[DebuffInfo.SPEED_REDUCTION]);
		freezeEnemy = true;
		freezeEnemyID = instance_id_get(i);
   }
   
   //apply damage if it's time to do so
   if (tick mod _tick_rate == 0) {
      var _dmg = _debuff[DebuffInfo.DMG];
      hp -= _dmg; // Or however you apply damage in your game
	  image_blend = _debuff[DebuffInfo.DAMAGE_COLOUR];
   }

   //decrease debuff duration 
   _debuff[DebuffInfo.DURATION]--;
   
   //remove debuff when it expires
   if (_debuff[DebuffInfo.DURATION] <= 0) {
      array_delete(debuffs, i, 1);
	  if (image_blend == c_aqua) {
		image_blend = c_white;
		image_alpha = 1;
	  }
   }
}

get_damaged(objDamageEnemy);

//turn off red damage flash
if(image_blend == c_red) {
	image_alpha -= 0.025
	if(image_alpha <= 0.70) {
		image_blend = c_white;
		image_alpha = 1;
	}
}

if instance_exists(objPlayer) {
	//create path and move to player
	var px = (objPlayer.x div 32) * 32 + 16;
	var py = (objPlayer.y div 32) * 32 + 16;	

	if(mp_grid_path(global.grid,path, x, y, px, py, 1)){
		path_start(path,chaseSpd, path_action_stop, false);  
	}
}

//chase the player
	//getting the speed
	xspd = lengthdir_x(spd, dir);
	yspd = lengthdir_y(spd, dir);
	
	//get the correct face
	if dir > 90 && dir < 270 
	{face = -1;} 
	else {face = 1;}

	//collisions
	if place_meeting(x + xspd, y, objWall) || 
	place_meeting(x + xspd, y, objEnemyParent) 
	{xspd = 0;}
	
	if place_meeting(x, y + yspd, objWall) || 
	place_meeting(x, y + yspd, objEnemyParent) 
	{yspd = 0;}

//death
if hp <= 0 {
	//destroy self
	audio_play_sound(sndEnemyDeath, 0, 0, 1.0, undefined, 1.0);
	instance_destroy();
	effect_create_above(ef_smokeup, x, y, 2, c_red);
	
	var lay_id = layer_get_id("Background");
	var back_id = layer_background_get_id(lay_id);
	layer_background_sprite(back_id, sprFinalBossBgEnraged);
	
	if (audio_is_playing(sndFinalBossInitialBGM)){
		audio_stop_sound(sndFinalBossInitialBGM);
	}
}
