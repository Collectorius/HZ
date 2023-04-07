if hp > 0{
	switch(moveVec)
	{
		case 0:
		hMove = 1;
		break;

		case 1:
		vMove = 0;
		hMove = 0;
		break;

		case 2:
		vMove = 1;
		break;

		case 3:
		vMove = 0;
		hMove = 0;
		break;
	
		case 4:
		hMove = -1;
		break;
	
		case 5:
		vMove = 0;
		hMove = 0;
		break;
	
		case 6:
		vMove = -1;
		break;
	}
	hsp = hMove * 3;
	vsp = vMove * 3;

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
	
	if(place_meeting(x+hsp,y,oEnWall))
	{
		while(!place_meeting(x+sign(hsp),y,oEnWall))
		{
			x += sign(hsp);
		}
		hsp = 0;
	}

	if(place_meeting(x,y+vsp,oEnWall))
	{
		while(!place_meeting(x,y+sign(vsp),oEnWall))
		{
			y += sign(vsp);
		}
		vsp = 0;
	}

	x += hsp;
	y += vsp;
}
else
{
instance_create_layer(x,y,"sInstance",oEnCo);
instance_destroy();
}