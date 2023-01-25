/// @description 

event_inherited();

if (hasWeapon)
{
	Gun = instance_create_layer(x,y,"Gun",oEnemyGun);
	with (Gun)
	{
		owner = other.id; //id of oEnemy instance;
	}
}
else Gun = noone;