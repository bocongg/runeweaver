//get cam coordinates
var _camX = camera_get_view_x(view_camera[0]);
var _camY = camera_get_view_y(view_camera[0]);

//draw player's hp
var _healthPercent = playerHp / playerMaxHp;
var _hpImage = _healthPercent * (sprite_get_number(sprPlayerHealthBar) - 1);

// Position the health bar at the top-left corner of the view
var healthbar_x = _camX + 50; 
var healthbar_y = _camY + 50;
draw_sprite(sprPlayerHealthBar, _hpImage, healthbar_x, healthbar_y - sprite_height -11);
