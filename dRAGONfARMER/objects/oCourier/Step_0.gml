if !free{
	if in_c
	{
		if(path != pointer_null){
			mp_grid_path(gridAi,path,x,y,corpse.x,corpse.y,true);
			path_start(path,10,path_action_stop,false);
			if(path_get_length(path) == 0){
				path_end();
				in_c = false;
				out_c = true;
				corpse.for_trans = courierLine[num];
				corpse.transfer = true;
			}
		}
	} 
	else if out_c
	{
		mp_grid_path(gridAi,path,x,y,oGod.x,oGod.y,true)
		path_start(path,10,path_action_stop,false);
		if(path_get_length(path) == 0){
			path_end();
			out_c = false;
			free = true;
			in_c = true;
			path = path_add();
			corpse.for_trans = false;
			corpse.transfer = false;
			if(!ds_queue_empty(enemyCorLine)){
				sSearchCourier();
			}
			
		}		
	}
}