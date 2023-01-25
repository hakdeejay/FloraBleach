/// @description

if (bleached) return; //if already bleached dont set off again, will confuse player.

bleached = true; random(1); //random if infected

if (bleached) 
{
	alphaValue=0.1;
	updateAlpha=true;
	audio_play_sound(snPop,0,false);
	part_particles_create(global.partSystem,other.x,other.y,global.particleCured,50);
	switch(type)
	{
		case plants.flower:
		global.flowers++;
		global.total++;
		break;
		case plants.tree:
		global.trees++;
		global.total++;
		break;
		case plants.mushroom:
		global.mushrooms++;
		global.total++;
		break;
	}
}
