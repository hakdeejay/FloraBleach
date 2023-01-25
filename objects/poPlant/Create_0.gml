/// @description Insert description here
// You can write your code in this editor

minTimer=60*60; //60=1 sec 3600=1 min
MaxTimer=60*180; 

//shader outline
upixelH = shader_get_uniform(shOutline,"pixelH");
upixelW = shader_get_uniform(shOutline,"pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texetH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

flash=3;

bleached = random(1); //random if infected

type=0; //1=flower 2=tree 3=mushroom

alarmCount = random_range(minTimer,MaxTimer); //600 = 10 sec 60 = 1 sec
alarm[0] = alarmCount;

if (bleached) 
{
	alphaValue=0.1;
	updateAlpha=true;
}
else 
{
	alphaValue=1; //if not bleached set alphavalue = 1
	updateAlpha=false;
}



