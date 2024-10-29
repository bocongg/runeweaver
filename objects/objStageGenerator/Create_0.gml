// starting room (stage 1)
xpos[0] = 384; ypos[0] = 559;

// room 1 & 2 (stage 2)
xpos[1] = 517; ypos[1] = 407;
xpos[2] = 505; ypos[2] = 707;

// room 3, 4, 5 (stage 3)
xpos[3] = 671; ypos[3] = 272;
xpos[4] = 671; ypos[4] = 557;
xpos[5] = 671; ypos[5] = 852;

// room 6, 7 (stage 4)
xpos[6] = 814; ypos[6] = 406;
xpos[7] = 812; ypos[7] = 707;

// room 8 (stage 5)
xpos[8] = 957; ypos[8] = 557;

// room 9, 10 (stage 6)
xpos[9] = 1110; ypos[9] = 406;
xpos[10] = 1110; ypos[10] = 712;

// room 11, 12, 13 (stage 7)
xpos[11] = 1258; ypos[11] = 272;
xpos[12] = 1258; ypos[12] = 556;
xpos[13] = 1258; ypos[13] = 852;

// room 14 (stage 8)
xpos[14] = 1518; ypos[14] = 554;

// final boss room
xpos[15] = 1732; ypos[15] = 557;


if (!variable_global_exists("stage")) {
    global.stage = 0;
}



randomise();
//Stage 2 generation - Combat & Event rooms only
var objRmList = [objRmNode1, objRmNode2];

for (var i = 0; i < 2; i+=1){
	var randomRm = choose(sprRmCombat, sprRmEvent);
	object_set_sprite(objRmList[i], randomRm);
}

//Stage 3 generation - Combat, Event, Treasure, Shop
objRmList = [objRmNode3, objRmNode4, objRmNode5];

for (var i = 0; i < 3; i+=1){
	var randomRm = choose(sprRmCombat, sprRmEvent, sprRmShop, sprRmTreasure);
	object_set_sprite(objRmList[i], randomRm);
}

//Stage 4 generation - Combat
objRmList = [objRmNode6, objRmNode7];

for (var i = 0; i < 2; i+=1){
	var randomRm = sprRmCombat;
	object_set_sprite(objRmList[i], randomRm);
}

//Stage 5 generation - Fixed as Rest

//Stage 6 generation - Combat, Event, Treasure, Shop
objRmList = [objRmNode9, objRmNode10];

for (var i = 0; i < 2; i+=1){
	var randomRm = choose(sprRmCombat, sprRmEvent, sprRmShop, sprRmTreasure);
	object_set_sprite(objRmList[i], randomRm);
}

//Stage 7 generation - Combat, Event, Treasure, Shop
objRmList = [objRmNode11, objRmNode12, objRmNode13];

for (var i = 0; i < 3; i+=1){
	var randomRm = choose(sprRmCombat, sprRmEvent, sprRmShop, sprRmTreasure);
	object_set_sprite(objRmList[i], randomRm);
}



instance_create_layer(xpos[0], ypos[0], "MapNodes", objRmNodeStart);
instance_create_layer(xpos[1], ypos[1], "MapNodes", objRmNode1);
instance_create_layer(xpos[2], ypos[2], "MapNodes", objRmNode2);
instance_create_layer(xpos[3], ypos[3], "MapNodes", objRmNode3);
instance_create_layer(xpos[4], ypos[4], "MapNodes", objRmNode4);
instance_create_layer(xpos[5], ypos[5], "MapNodes", objRmNode5);
instance_create_layer(xpos[6], ypos[6], "MapNodes", objRmNode6);
instance_create_layer(xpos[7], ypos[7], "MapNodes", objRmNode7);
instance_create_layer(xpos[8], ypos[8], "MapNodes", objRmNode8);
instance_create_layer(xpos[9], ypos[9], "MapNodes", objRmNode9);
instance_create_layer(xpos[10], ypos[10], "MapNodes", objRmNode10);
instance_create_layer(xpos[11], ypos[11], "MapNodes", objRmNode11);
instance_create_layer(xpos[12], ypos[12], "MapNodes", objRmNode12);
instance_create_layer(xpos[13], ypos[13], "MapNodes", objRmNode13);
instance_create_layer(xpos[14], ypos[14], "MapNodes", objRmNode14);
instance_create_layer(xpos[15], ypos[15], "MapNodes", objRmFinalBoss);


global.stagesCleared = ds_list_create();