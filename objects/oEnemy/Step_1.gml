/// @description Insert description here
// You can write your code in this editor

if (hp <=0)
{
	with(instance_create_layer(x,y,layer,oEnemyDead))
	{
		direction=other.hitfrom;
		hsp = lengthdir_x(4,direction);
		vsp = lengthdir_y(4,direction);
		if (sign(hsp) !=0) image_xscale=sign(hsp);
	}
	instance_destroy();
	with (Gun) instance_destroy();
	global.kills++;
	global.killsThisRoom ++;
}

