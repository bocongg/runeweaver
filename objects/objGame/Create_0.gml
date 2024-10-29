scr_init_inventory();

scr_add_rune_info(item.firerune1,
				  "Fire Rune",
				  "Basic: Fire Bolt",
				  "Shoot a bolt of\nflame. Burns, dealing\ndamage over time.",
				  "Special: Fireball",
				  "Hurl a ball of fire\nthat explodes,\ndealing area damage\nand burns the\nenemy.");
scr_add_rune_info(item.firerune2,
				  "Fire Rune",
				  "Basic: Fire Bolt",
				  "Shoot a bolt of\nflame. Burns, dealing\ndamage over time.",
				  "Special: Fireball",
				  "Hurl a ball of fire\nthat explodes,\ndealing area damage\nand burns the\nenemy.");
scr_add_rune_info(item.firerune3,
				  "Fire Rune",
				  "Basic: Fire Bolt",
				  "Shoot a bolt of\nflame. Burns, dealing\ndamage over time.",
				  "Special: Fireball",
				  "Hurl a ball of fire\nthat explodes,\ndealing area damage\nand burns the\nenemy.");
				  
scr_add_rune_info(item.icerune1,
				  "Ice Rune",
				  "Basic: Ice Shard",
				  "Shoot a shard of ice.\nSlows the enemy\ndown.",
				  "Special: Flash Freeze",
				  "Freeze the air\naround the player,\nfreezing enemies\nfor a short time.");
scr_add_rune_info(item.icerune2,
				  "Ice Rune",
				  "Basic: Ice Shard",
				  "Shoot a shard of ice.\nSlows the enemy\ndown.",
				  "Special: Flash Freeze",
				  "Freeze the air\naround the player,\nfreezing enemies\nfor a short time.");
scr_add_rune_info(item.icerune3,
				  "Ice Rune",
				  "Basic: Ice Shard",
				  "Shoot a shard of ice.\nSlows the enemy\ndown.",
				  "Special: Flash Freeze",
				  "Freeze the air\naround the player,\nfreezing enemies\nfor a short time.");
				  
scr_add_rune_info(item.windrune1,
				  "Wind Rune",
				  "Basic: Air Cutter",
				  "Shoot blades of air.\nPushes the enemy\nback slightly.",
				  "Special: Galeforce",
				  "Conjure a cone of\nwind, pushing\nenemies back.");
scr_add_rune_info(item.windrune2,
				  "Wind Rune",
				  "Basic: Air Cutter",
				  "Shoot blades of air.\nPushes the enemy\nback slightly.",
				  "Special: Galeforce",
				  "Conjure a cone of\nwind, pushing\nenemies back.");
scr_add_rune_info(item.windrune3,
				  "Wind Rune",
				  "Basic: Air Cutter",
				  "Shoot blades of air.\nPushes the enemy\nback slightly.",
				  "Special: Galeforce",
				  "Conjure a cone of\nwind, pushing\nenemies back.");
				  
scr_add_rune_info(item.frostfirerune2,
				  "Frostfire Rune",
				  "",
				  "",
				  "Special:\nFrostfire Blast",
				  "Shoot a ball of fire\nand ice which\nexplodes, burning\nand freezing the\nenemy.");
scr_add_rune_info(item.frostfirerune3,
				  "Frostfire Rune",
				  "",
				  "",
				  "Special:\nFrostfire Blast",
				  "Shoot a ball of fire\nand ice which\nexplodes, burning\nand freezing the\nenemy.");
				  
scr_add_rune_info(item.blizzardrune2,
				  "Blizzard Rune",
				  "",
				  "",
				  "Special: Blizzard",
				  "Call forth an icy\nstorm, freezing\nenemies in its\nradius.");
scr_add_rune_info(item.blizzardrune3,
				  "Blizzard Rune",
				  "",
				  "",
				  "Special: Blizzard",
				  "Call forth an icy\nstorm, freezing\nenemies in its\nradius.");
				  
scr_add_rune_info(item.infernorune2,
				  "Inferno Rune",
				  "",
				  "",
				  "Special: Inferno",
				  "Call forth a storm\nof fire, burning\nenemies in an\narea and pushing\nthem back.");
scr_add_rune_info(item.infernorune3,
				  "Inferno Rune",
				  "",
				  "",
				  "Special: Inferno",
				  "Call forth a storm\nof fire, burning\nenemies in an\narea and pushing\nthem back.");

scr_add_rune_info(item.prismrune3,
				  "Prismatic Rune",
				  "",
				  "",
				  "Special:\nPrismatic Beam",
				  "Shoot a beam of\nmagical light.\nBurns and freezes\nenemies, and pushes\nthem back, but has\na very long cooldown.");


scr_gain_item(item.firerune1, 23);
scr_gain_item(item.icerune1, 23);
scr_gain_item(item.windrune1, 23);
scr_gain_item(item.frostfirerune2, 23);
scr_gain_item(item.blizzardrune2, 23);
scr_gain_item(item.infernorune2, 23);
scr_gain_item(item.prismrune3, 1);
scr_gain_item(item.firerune2, 23);
scr_gain_item(item.icerune2, 23);
scr_gain_item(item.windrune2, 23);
scr_gain_item(item.frostfirerune3, 23);
scr_gain_item(item.blizzardrune3, 23);
scr_gain_item(item.infernorune3, 23);
scr_gain_item(item.firerune3, 23);
scr_gain_item(item.icerune3, 23);
scr_gain_item(item.windrune3, 23);


// Player HP
global.playerMaxHp = 10;
global.playerHp = global.playerMaxHp;

global.energyDrink = 0;

global.goldChance = 0;

//// Start the game music on a loop.
//audio_play_sound(sndMusicGame, 0, 1, 1.0, undefined, 1.0);

//// Set the experience goal to reach the next level.
////global.xp_goal = 10;

//// Set current experience.
////global.xp = 0;

//// Set the current level.
////global.level = 1;

//// Set the cooldown time for spawning enemies.
////global.enemy_spawn_speed = 60;

//// Set starting enemy health bonus.
//// This is a multiplier, and is increased each wave.
//// Result: enemy hp = enemy base hp * health bonus.
////global.enemy_health_bonus = 1;

//// Create the hero in the center of the room.
//instance_create_layer(room_width / 2, room_height / 2, "Instances", objPlayer);

// Execute the shooting weapon reset function,
// initializing values for that weapon.
//weapon_shooting_reset();

// Execute the swipe weapon reset function,
// initializing values for that weapon.
//weapon_swipe_reset();

// Execute the trail weapon reset function,
// initializing values for that weapon.
//weapon_trail_reset();

// Create the pause button.
//instance_create_layer(1820, 20, "UpgradeScreen", obj_pause_button);

// Create the upgrade screen.
// instance_create_layer(0, 0, "Instances", objGetRuneScreen);

// Sets cooldown for enemy spawning time (from frames to seconds).
//spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

// Function handles enemy spawning.
//spawn_enemy = function()
//{
	// Reset cooldown.
//	spawn_enemy_cooldown = global.enemy_spawn_speed * (1 / 60);

	// If an instance of objGetRune exists then
	// that means we are on the upgrade screen...
//	if (instance_exists(objGetRunes))
//	{
		// Exit event, stopping any enemies from spawning.
//		exit;
//	}

	// If an instance of objGetRune exists then
	// that means we are on the upgrade screen...
//	if (instance_exists(obj_game_over))
//	{
		// Exit event, stopping any enemies from spawning.
//		exit;
//	}

	// Declare a temp variable to hold an enemy type.
	// By default this will be the pumpkill enemy.
//	var _enemy = obj_pumpkill;

	// If we are over level 2...
//	if (global.level > 2)
//	{
		// Change the enemy type to either
		// pigun or pumpkill.
//		_enemy = choose(obj_pigun, obj_pumpkill);
//	}

	// If we are over level 4...
//	if (global.level > 4)
//	{
		// Change the enemy type to either
		// pigun, pumpkill or rooster.
//		_enemy = choose(obj_pigun, obj_pumpkill, obj_rooster);
//	}

	// We want to spawn enemyes around the player.
	// So we first get a random direction (0 to 360).
//	var _dir = random(360);

	// Then we get the position 1200 pixels away
	// from the hero on the x axis.
//	var _x = obj_hero.x + lengthdir_x(1200, _dir);

	// Then we get the position 1200 pixels away
	// from the hero on the y axis.
//	var _y = obj_hero.y + lengthdir_y(1200, _dir);

	// Create an enemy at that generated positon.
//	instance_create_layer(_x, _y, "Instances", _enemy);
//}
