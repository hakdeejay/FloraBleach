/// @description Core Player Logic
//	You can write your code in this editor
//	Player input


key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right)  || keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);


var _move = key_right - key_left; //deducting right from left will give 1 or -1 result
hsp = _move * walksp;

vsp = vsp + grv;
lateJump--;

if (lateJump>0) && (key_jump)
{
	vsp = -jumpsp; //negative jump speed, as up is negative move
	lateJump=10; //reset late jump
}

//horizontal collison
if (place_meeting(x+hsp, y, poCollideShot))
{
	while(!place_meeting(x+sign(hsp),y,poCollideShot))
	{
		x=x+sign(hsp); //this will move player to be next to oWall
	}
	hsp=0;
}
x=x+hsp;

// vertical collision
if(vsp>0)
{
	if (!place_meeting(x,y,poCollideShot))
	{
if (place_meeting(x,y+vsp,poCollideShot))
{	
	while(!place_meeting(x,y+sign(vsp),poCollideShot))
	{
		y=y+sign(vsp); //same as above move player to oWall
	}
	vsp=0;
}
}
}
y=y+vsp;
#region// animation
if (!place_meeting(x,y+1,poCollideShot))
{
	sprite_index = sPlayerAir; //if not on oWall then in Air
	image_speed = 0; //stop animating
	if (vsp>0) image_index = 1; else image_index = 0; //set jump or falling sprite
}
else
{
	lateJump=10;
	if (sprite_index == sPlayerAir) 
	{
		audio_play_sound(snLanding,5,false);
		//oDust particles
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullet",oDust))
			{
				vsp=0; //this if vsp of oDust, because of with command
			}
		}
	}
	image_speed = 1; //start animating again
	if (hsp == 0)sprite_index= sPlayer; else sprite_index = sPlayerWalk; //set idle or walking sprite
}

// if (hsp != 0) image_xscale = sign(hsp); //reverse image moving left

var mouseAngle = point_direction(x,y,mouse_x,mouse_y);

if (mouseAngle > 90) && (mouseAngle <270)
{
	image_xscale = -1; //xscale reflects in vertical
}
else
{
	image_xscale=1;
}
#endregion