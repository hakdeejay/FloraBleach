if (other.invincible) 
{
	spark = instance_create_layer(self.x,self.y,"Bullet",oBulletSpark);
	spark.direction = -other.direction;

	instance_destroy();
	return;
}


if (!other.isEnemy)
{
	with(other)
	{
		hp --;
		flash=3;
		hitfrom = other.direction;
	}
	instance_destroy();
}