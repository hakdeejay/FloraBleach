/// @description slidetransition(mode, tartgetroom)
/// @arg Mode Sets transition mode from next, restart, goto
/// @arg Target Sets target room when using the goto mode.

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SlideTransition()
{
	with (oTransition) //oTransition needs to be in room
	{
		mode=argument[0];
		if (argument_count >1) target = argument[1]
	}
	
}