/// @description Hit Plant
// You can write your code in this editor

with(other)
{
	if (!bleached) return; //this will stop the collision
	updateAlpha=true;
	hitfrom = other.direction;
	flash=3;
}

spark = instance_create_layer(self.x,self.y,"Bullet",oBulletSpark);
spark.direction = other.direction;

instance_destroy();
