/// @description Use Shader for Bullet hit
// You can write your code in this editor

draw_self();

if (flash>0)
{
	flash --;
	shader_set(shRed);
	draw_self();
	shader_reset();
}
