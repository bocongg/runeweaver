draw_set_font(fntMedium);
draw_set_halign(fa_center);

with(objLionEnemy) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objLizardEnemy) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objSpiderEnemy) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objSpiderEnemyBaby) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objWolfEnemy) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objWormEnemy) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objFinalBossInitial) {draw_text(x, y + sprite_height/2 + 10,string(hp)+"/"+string(maxHp));}
with(objFinalBossEnraged) {draw_text(x, y + sprite_height + 10,string(hp)+"/"+string(maxHp));}

draw_set_halign(fa_left);