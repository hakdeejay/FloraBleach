/// @description Insert description here
// You can write your code in this editor

x = owner.x;
y = owner.y+10;

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_direction(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		image_angle=point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0) 
		{
			countdown=random_range(40,80);
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,obj_Ground,false,false))
			{

			audio_play_sound(snShot,0,false);
			with (instance_create_layer(x,y,"Bullet",oEnemyBullet))
			{
				speed = 10;
				direction = other.image_angle + random_range(-3,3);
				image_angle = direction;
			}
			}
		}
	}
}