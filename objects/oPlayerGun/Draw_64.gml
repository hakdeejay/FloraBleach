/// @description WaterBar, PressureBar

// You can write your code in this editor

draw_sprite(sBarBG,0,waterBar_x,waterBar_y);
draw_sprite_stretched(sWaterLevel,0,waterBar_x,waterBar_y,(water/waterMax)*bar_width,bar_height);
draw_sprite(sBar,0,waterBar_x,waterBar_y);

draw_sprite(sBarBG,0,pressureBar_x,pressureBar_y);
draw_sprite_stretched(sPressureLevel,0,pressureBar_x,pressureBar_y,(pressure/pressureMax)*bar_width,bar_height);
draw_sprite(sBar,0,pressureBar_x,pressureBar_y);