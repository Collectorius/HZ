if(gadd == 4){
	oAltar.add = 0;
	gadd = 0;
	instance_destroy(oEnCo);
	courierLineNum++;
	courierLine[courierLineNum - 1] =  instance_create_layer(x,y,"sInstance",oCourier);
}