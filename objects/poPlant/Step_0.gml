/// @description Insert description here
// You can write your code in this editor
if (updateAlpha) //set by bullet on collison
{
	image_alpha = alphaValue; //set image alpha
	alphaValue+=0.1; //increase aplha value for next time
	updateAlpha=false; //set alpha updating again
}

if (bleached && alphaValue>=1) //if alpha value is 1 or above plant is healed
{
	alarmCount = random_range(minTimer,MaxTimer); //600 = 10 sec 60 = 1 sec
	alarm[0] = alarmCount;
	bleached=false; //turn off infection
	part_particles_create(global.partSystem,other.x,other.y,global.particleCured,50);
	audio_play_sound(snSprinkles,5,false);
	switch type
	{
		case plants.flower:
			global.flowers --;
			global.total--;
			event_user(0);
			break;
		case plants.tree:
			global.trees --;
			global.total--;
			event_user(0);
			break;
		case plants.mushroom:
			global.mushrooms --;
			global.total--;
			event_user(0);
			break;
	}
}