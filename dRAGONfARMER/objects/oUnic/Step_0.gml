if(hp > 0){
	keyRight = keyboard_check(ord("D"));
	keyLeft = -keyboard_check(ord("A"));
	keyUp = -keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));

	hMove = keyLeft + keyRight;
	vMove = keyUp + keyDown;

	hsp = hMove * moveSpeed;
	vsp = vMove * moveSpeed;

	image_angle = point_direction(x,y,mouse_x,mouse_y);

	if(place_meeting(x+hsp,y,oWall))
	{
		while(!place_meeting(x+sign(hsp),y,oWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	if(place_meeting(x,y+vsp,oWall))
	{
		while(!place_meeting(x,y+sign(vsp),oWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	if(mouse_check_button_pressed(mb_left))
	{
		var projctale = instance_create_layer(x,y,"sInstance",oHorn);
		projctale.alarm[0] = 0.05*room_speed;
		projctale.sp = 10;
	}

	if(place_meeting(x,y,oEnemy)){
		hp -= 5;
	}

	switch(state){
	case 1: corpse = instance_nearest(x,y,oEnCo);
			if(distance_to_object(corpse) < 50 )
			{
				if(keyboard_check_pressed(ord("E"))){
				corpse.transfer = true;
				corpse.for_trans = oUnic;
				state = 2;
				}
				else if(keyboard_check_pressed(ord("F")))
				{
					ds_queue_enqueue(enemyCorLine, corpse);
					sSearchCourier();
				}
			}
	break;
	case 2: if(keyboard_check_pressed(ord("E")))
			{
				corpse.transfer = false;
				corpse.for_trans = false;
				state = 1;
			}
	break;
	}

	x += hsp;
	y += vsp;
}
else{
	instance_destroy();	
}