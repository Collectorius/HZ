globalvar gridAi;
gridAi = mp_grid_create(0,0,room_width div 32,room_height div 32,32,32);
mp_grid_add_instances(gridAi,oWall,true)

globalvar enemyCorLine;
enemyCorLine = ds_queue_create();

globalvar courierLine;
globalvar courierLineNum;
courierLine = [0];
courierLineNum = 0;

globalvar gadd;
gadd = 0;