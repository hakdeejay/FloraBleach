/// @description

// Inherit the parent event
event_inherited();

if (place_meeting(x,y+vsp,poCollideShot))
{
	while(!place_meeting(x,y+sign(vsp),poCollideShot))
	{
		y=y+sign(vsp); //same as above move player to oWall
	}
	vsp=0;
}
y=y+vsp;

if (place_meeting(x,y+1,poCollideShot))
{
	vsp=1;
}