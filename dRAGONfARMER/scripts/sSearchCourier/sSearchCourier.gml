function sSearchCourier(){
	for(var i = 0;i < courierLineNum;i++){
		if (courierLine[i].free){
			courierLine[i].free = false;
			courierLine[i].corpse = ds_queue_dequeue(enemyCorLine);
			break;
		}
	}
}