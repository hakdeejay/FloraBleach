/// @description Setup Variables

//show_debug_message("Entered Transition Object");

// You can write your code in this editor

w = display_get_gui_width();
h = display_get_gui_height();

h_half = h * 0.5;

mode = TransMode.intro;

enum TransMode
{
	off,
	next,
	goto,
	restart,
	intro
}

percent = 1; //for lerping between 0 and 100%