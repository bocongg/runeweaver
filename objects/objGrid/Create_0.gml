//make grid
var cell_width = 32;
var cell_height = 32;
//set room grid
var hcells = room_width div cell_width;
var vcells = room_height div cell_height;

global.grid = mp_grid_create(0,0,hcells,vcells,cell_width,cell_height);

//add wall
mp_grid_add_instances(global.grid,objSolidWall,false);
