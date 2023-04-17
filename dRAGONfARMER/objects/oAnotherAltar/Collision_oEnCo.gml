corpse = instance_nearest(x,y,oEnCo);
if(!corpse.transfer){
	corpse.x = x;
	corpse.y = y;
	corpse.depth = depth - 1;
	if(add == 0){
		add++;
		gadd ++;
	}
}