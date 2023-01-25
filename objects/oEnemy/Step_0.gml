/// @description Core Enemy Logic

vsp = vsp + grv;

if (grounded) && (afraidOfHeights) && (!place_meeting(x+hsp,y+1,obj_Ground))
{
	hsp = -hsp;
}

//horizontal collison
if (place_meeting(x+hsp,y,obj_Ground))
{
	grounded=false;
	while(!place_meeting(x+sign(hsp),y,obj_Ground))
	{
		x=x+sign(hsp);
	}
	hsp=-hsp;
}
x=x+hsp;

// vertical collision
if (place_meeting(x,y+vsp,obj_Ground))
{
	grounded=true;
	while(!place_meeting(x,y+sign(vsp),obj_Ground))
	{
		y=y+sign(vsp);
	}
	vsp=0;
}
y=y+vsp;

// animation
if (!place_meeting(x,y+1,obj_Ground))
{
	sprite_index = sEnemyAir;
	image_speed = 0;
	if (vsp>0) image_index = 1; else image_index = 0;
}
else
{
	image_speed = 1;
	if (hsp == 0)sprite_index= sEnemy; else sprite_index = sEnemyWalk;
}

if (hsp != 0) image_xscale = sign(hsp); //reverse image moving left