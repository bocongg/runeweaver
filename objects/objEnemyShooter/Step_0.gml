event_inherited();
switch (state) {
    case 0: // Chase state
	#region
        if instance_exists(objPlayer) {
            dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        }
        
        spd = chaseSpd;
        
        shootTimer++;
        if (shootTimer > cooldownTime) {
            state = 1;
            shootTimer = 0;
        }
        break;
    #endregion    
    case 1: // Pause and shoot state
        if instance_exists(objPlayer) {
            dir = point_direction(x, y, objPlayer.x, objPlayer.y);
        }
        
        chaseSpd = 0;
        //image_index = 0;

        shootTimer++;
        
        if (shootTimer == 1) {
            bulletInst = instance_create_depth(x + bulletXoff * face, y + bulletYoff, depth, bulletType);
        }
        
        if (shootTimer <= windupTime && instance_exists(bulletInst)) {
            bulletInst.x = x + bulletXoff * face;
            bulletInst.y = y + bulletYoff;
        }
        
        if (shootTimer == windupTime && instance_exists(bulletInst)) {
            audio_play_sound(sndEnemyAttack, 0, 0, 1.0, undefined, 1.0);
            if (freezeEnemy) {
                bulletInst.destroy = true;
            } else {
                bulletInst.state = 1;
            }
        }
        
        if (shootTimer > windupTime + recoverTime) {
            state = 0;
            shootTimer = 0;
        }
        break;
}