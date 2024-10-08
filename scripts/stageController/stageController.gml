global.roomNum = ds_map_create();

stageLevelReset();

function stageLevelReset(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", true);
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
	ds_map_replace(global.roomNum, "roomThreeUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourUnlocked", false);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", false);
	ds_map_replace(global.roomNum, "roomSixUnlocked", false);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomEightUnlocked", false);
	ds_map_replace(global.roomNum, "roomNineUnlocked", false);
	ds_map_replace(global.roomNum, "roomTenUnlocked", false);
	ds_map_replace(global.roomNum, "roomElevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", false);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}