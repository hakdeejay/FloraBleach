/// @description update score



if (room != Menu) && (instance_exists(oPlayer))
{	
	
	draw_set_font(fMenu);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_set_color(c_black);
	draw_text(40,30,string(global.flowers ) + " Flowers Infected");
	draw_text(40,60,string(global.trees) + " Trees Infected");
	draw_text(40,90,string(global.mushrooms) + " Mushrooms Infected");
	draw_text(40,120,string(global.total) + " Total Plants");
	
	/*draw_set_colour(c_white);
	draw_text(10,32,string(global.flowers ) + " Flowers Infected");
	draw_text(10,62,string(global.trees) + " Trees Infected");
	draw_text(10,92,string(global.mushrooms) + " Mushrooms Infected");*/
	
}