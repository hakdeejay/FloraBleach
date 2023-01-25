/// @description Death Animation


if (done==0)
{
	vsp = vsp + grv;

	//horizontal collison
	if (place_meeting(x+hsp,y,obj_Ground))
	{
		while(!place_meeting(x+sign(hsp),y,obj_Ground))
		{
			x=x+sign(hsp);
		}
		hsp=0;
	}
	x=x+hsp;

	// vertical collision
	if (place_meeting(x,y+vsp,obj_Ground))
	{
		if (vsp>0)
		{ 
			done=1;
			image_index=1;
		}
		while(!place_meeting(x,y+sign(vsp),obj_Ground))
		{
			y=y+sign(vsp);
		}
		vsp=0;
	}
	y=y+vsp;
}