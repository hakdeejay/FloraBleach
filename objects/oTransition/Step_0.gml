/// @description Room Transition
// You can write your code in this editor

if (keyboard_check(vk_escape))
{ 
	global.roomIndex=1;
	room_goto(0); //go back to menu
}


if (mode != TransMode.off)
{
	if (mode == TransMode.intro)
	{
		percent = max(0, percent-max((percent/10),0.005));
	}
	else
	{
		percent = min(1, percent+max(((1-percent)/10),0.005));
	}
}

if  (percent == 1) || (percent==0)
{
	switch (mode)
	{
			case TransMode.intro:
			{
				mode = TransMode.off;
				break;
			}
			case TransMode.next:
			{
				show_debug_message("Global Room Index = "+ string(global.roomIndex));
				mode = TransMode.intro;
				if room_exists(global.roomIndex)
				{
					room_goto(global.roomIndex);
				}else
				{
					room_goto(room_first);
				}
				break;
			}
			case TransMode.goto:
			{
				mode = TransMode.intro;
				room_goto(target);
				break;
			}
			case TransMode.restart:
			{
				room_restart();
				break;
			}
	}
}