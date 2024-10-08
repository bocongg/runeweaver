// starting room
xpos[0] = 152; ypos[0] = 520;

// room 1 & 2 (stage 1)
xpos[1] = 328; ypos[1] = 328;
xpos[2] = 328; ypos[2] = 712;

// room 3, 4, 5 (stage 2)
xpos[3] = 488; ypos[3] = 152;
xpos[4] = 488; ypos[4] = 520;
xpos[5] = 488; ypos[5] = 904;

// room 6, 7 (stage 3)
xpos[6] = 649; ypos[6] = 328;
xpos[7] = 680; ypos[7] = 712;

// room 8 (stage 4)
xpos[8] = 840; ypos[8] = 520;

// room 9, 10 (stage 5)
xpos[9] = 1000; ypos[9] = 328;
xpos[10] = 1000; ypos[10] = 712;

// room 11, 12, 13 (stage 6)
xpos[11] = 1176; ypos[11] = 152;
xpos[12] = 1176; ypos[12] = 520;
xpos[13] = 1160; ypos[13] = 904;

// room 14 (stage 7)
xpos[14] = 1432; ypos[14] = 520;

// final boss room (stage 8)
xpos[15] = 1688; ypos[15] = 520;

global.stage += 1;

if (global.stage = 0) {
	stageLevelReset();
	randomise();
}

if (global.stage = 1) {
	ds_map_replace(global.roomNum, "roomOneUnlocked", true);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", true);
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
} else if (global.stage = 2) {
	ds_map_replace(global.roomNum, "roomThreeUnlocked", true);
	ds_map_replace(global.roomNum, "roomFourUnlocked", true);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
} else if (global.stage = 3) {
	ds_map_replace(global.roomNum, "roomSixUnlocked", true);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", true);

	ds_map_replace(global.roomNum, "roomThreeUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourUnlocked", false);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", false);
} else if (global.stage =4) {
	ds_map_replace(global.roomNum, "roomEightUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomSixUnlocked", false);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", false);
} else if (global.stage = 5) {
	ds_map_replace(global.roomNum, "roomNineUnlocked", true);
	ds_map_replace(global.roomNum, "roomTenUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomEightUnlocked", false);
} else if (global.stage = 6) {
	ds_map_replace(global.roomNum, "roomElevenUnlocked", true);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", true);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomNineUnlocked", false);
	ds_map_replace(global.roomNum, "roomTenUnlocked", false);
} else if (global.stage = 7) {
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomElevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", false);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", false);
} else if (global.stage = 8) {
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", true);
	
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
}




instance_create_layer(xpos[0], ypos[0], "MapNodes", objRmCombatStart);
instance_create_layer(xpos[15], ypos[15], "MapNodes", objRmFinalBoss);

for (var i = 1; i <= 14; i++) {
    // Randomly select one of the four objects using the choose() function
    var selectedObj = choose(objRmCombat, objRmElite, objRmEvent, objRmRest, objRmTreasure);
    
    // Instantiate the selected object at (xpos[i], ypos[i]) on the "MapNodes" layer
    instance_create_layer(xpos[i], ypos[i], "MapNodes", selectedObj);
}


alarm_set(0, 100);