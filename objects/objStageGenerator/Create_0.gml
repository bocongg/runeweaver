xpos[0] = 152; ypos[0] = 520;
xpos[1] = 328; ypos[1] = 328;
xpos[2] = 328; ypos[2] = 712;
xpos[3] = 488; ypos[3] = 152;
xpos[4] = 488; ypos[4] = 520;
xpos[5] = 488; ypos[5] = 904;
xpos[6] = 649; ypos[6] = 328;
xpos[7] = 680; ypos[7] = 712;
xpos[8] = 840; ypos[8] = 520;
xpos[9] = 1000; ypos[9] = 328;
xpos[10] = 1000; ypos[10] = 712;
xpos[11] = 1176; ypos[11] = 152;
xpos[12] = 1176; ypos[12] = 520;
xpos[13] = 1160; ypos[13] = 904;
xpos[14] = 1432; ypos[14] = 520;
xpos[15] = 1688; ypos[15] = 520;

randomise()

instance_create_layer(xpos[0], ypos[0], "MapNodes", objRmCombat);
instance_create_layer(xpos[15], ypos[15], "MapNodes", objRmFinalBoss);

for (var i = 1; i <= 14; i++) {
    // Randomly select one of the four objects using the choose() function
    var selectedObj = choose(objRmCombat, objRmElite, objRmEvent, objRmRest, objRmTreasure);
    
    // Instantiate the selected object at (xpos[i], ypos[i]) on the "MapNodes" layer
    instance_create_layer(xpos[i], ypos[i], "MapNodes", selectedObj);
}

alarm_set(0, 100);