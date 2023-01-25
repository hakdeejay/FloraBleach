/// @description Gun Setup
// You can write your code in this editor

x= oPlayer.x;
y= oPlayer.y+10; //position gun attatched to player

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay -= 1;
recoil = max(0,recoil-1);

if (image_angle > 90) && (image_angle <270)
{ image_yscale = -1; } else
{ image_yscale=1; }

//check for key q
if (keyboard_check_pressed(ord("Q")))
{
	pressure=pressure+10;
	recoil=4; //gun movement backward
	audio_play_sound(snLocknLoad,0,false);
}
x=x-lengthdir_x(recoil,image_angle);
y=y-lengthdir_y(recoil,image_angle);

if (mouse_check_button(mb_left) && (firingDelay<0))
{
	water=water-reduceWater;
	pressure=pressure-reducePressure;
	
	if(water<=0) //check water doesn't go negative
	{ 
	water = 0;
	return;
	}
	if(pressure<=0) //check pressure doesn't go negative
	{
		pressure=0;
		return;
	}
	firingDelay=2; //start shot

	// ScreenShake(1,60);
	audio_play_sound(snWatering,5,false);
	with (instance_create_layer(x,y,"Bullet",oBullet))
	{
		speed = other.pressure*.3; //pressure sets speed
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

if (mouse_check_button_released(mb_left)) audio_stop_sound(snWatering);