 /// @description after each cured plant check for room completion

if ((global.flowers==0) && (global.trees==0) && (global.mushrooms==0) && (global.total=0))
{

	global.roomIndex++;
	
	show_debug_message("In User Event [0]");
	show_debug_message("Room Index " + string(global.roomIndex));
	
	if (global.roomIndex>room_last) global.roomIndex = 1; //check if were in the last room
	
	with (oPlayer)
	{
	if (hascontrol)
		{
			hascontrol = false;
			SlideTransition(TransMode.next,global.roomIndex); //roomIndex is target
		}
	}
}