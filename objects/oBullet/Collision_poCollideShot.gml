/// @description Hit Ground
// You can write your code in this editor

with(other)
{
	hp --;
	flash=3;
	hitfrom = other.direction;
	if (type == incidentals.crate) audio_play_sound(snCrate,0,false);
}

var spark = instance_create_layer(self.x,self.y,"Bullet",oBulletSpark);
spark.direction = other.direction;

instance_destroy();