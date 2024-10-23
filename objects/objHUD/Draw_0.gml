//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//draw player's hp
var _healthPercent = global.playerHp / global.playerMaxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprPlayerHealthBar) - 1);

// Position the health bar at the top-left corner of the view
var healthbar_x = _camX + 50; 
var healthbar_y = _camY + 50;
draw_sprite(sprPlayerHealthBar, _hpImage, healthbar_x, healthbar_y - sprite_height -11);

//draw the player's gold
var _goldString = "X " + string(global.gold);
image_speed = 0.2;

// Calculate the top-right corner of the view
var gold_x = _camX + 1700;
var gold_y = _camY + 50; // Adjust the vertical offset as needed


draw_sprite(sprGold, image_index, gold_x, gold_y);
draw_set_font(fntMedium);
draw_text(gold_x + 30, gold_y - 10, _goldString);
