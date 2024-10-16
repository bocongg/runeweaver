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

function setStageOne(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
	ds_map_replace(global.roomNum, "roomOneUnlocked", true);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", true);
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

function setStageTwo(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
	ds_map_replace(global.roomNum, "roomThreeUnlocked", true);
	ds_map_replace(global.roomNum, "roomFourUnlocked", true);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", true);
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

function setStageThree(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
	ds_map_replace(global.roomNum, "roomThreeUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourUnlocked", false);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", false);
	ds_map_replace(global.roomNum, "roomSixUnlocked", true);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", true);
	ds_map_replace(global.roomNum, "roomEightUnlocked", false);
	ds_map_replace(global.roomNum, "roomNineUnlocked", false);
	ds_map_replace(global.roomNum, "roomTenUnlocked", false);
	ds_map_replace(global.roomNum, "roomElevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", false);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}

function setStageFour(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
	ds_map_replace(global.roomNum, "roomThreeUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourUnlocked", false);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", false);
	ds_map_replace(global.roomNum, "roomSixUnlocked", false);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomEightUnlocked", true);
	ds_map_replace(global.roomNum, "roomNineUnlocked", false);
	ds_map_replace(global.roomNum, "roomTenUnlocked", false);
	ds_map_replace(global.roomNum, "roomElevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", false);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}

function setStageFive(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
	ds_map_replace(global.roomNum, "roomOneUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwoUnlocked", false);
	ds_map_replace(global.roomNum, "roomThreeUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourUnlocked", false);
	ds_map_replace(global.roomNum, "roomFiveUnlocked", false);
	ds_map_replace(global.roomNum, "roomSixUnlocked", false);
	ds_map_replace(global.roomNum, "roomSevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomEightUnlocked", false);
	ds_map_replace(global.roomNum, "roomNineUnlocked", true);
	ds_map_replace(global.roomNum, "roomTenUnlocked", true);
	ds_map_replace(global.roomNum, "roomElevenUnlocked", false);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", false);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}

function setStageSix(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
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
	ds_map_replace(global.roomNum, "roomElevenUnlocked", true);
	ds_map_replace(global.roomNum, "roomTwelveUnlocked", true);
	ds_map_replace(global.roomNum, "roomThirteenUnlocked", true);
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", false);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}

function setStageSeven(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
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
	ds_map_replace(global.roomNum, "roomFourteenUnlocked", true);
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", false);
}

function setStageEight(){
	ds_map_replace(global.roomNum, "roomStartUnlocked", false);
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
	ds_map_replace(global.roomNum, "roomFinalBossUnlocked", true);
}