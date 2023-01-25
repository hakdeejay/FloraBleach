/// @description Use Shader for Bullet hit
// You can write your code in this editor

if (bleached)
{
	shader_set(shOutline);
	shader_set_uniform_f(upixelW,texelW);
	shader_set_uniform_f(upixelW,texelW);
	draw_self();
	shader_reset();
}


draw_self();

if (flash>0)
{
	flash --;
	shader_set(shRed);
	draw_self();
	shader_reset();
}
