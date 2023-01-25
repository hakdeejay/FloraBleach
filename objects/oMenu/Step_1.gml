/// @description

if (keyboard_check(ord("1"))) kValue=1;
if (keyboard_check(ord("2"))) kValue=2;
if (keyboard_check(ord("3")))  kValue=3;
//if (keyboard_check(ord("4")))  kValue=4;

switch (kValue)
{
	
		case 1:
		room_goto(kValue);
		break;

		case 2:
		room_goto(kValue);
		break;
			
		case 3:
		room_goto(kValue);
		break;
		
		//case 4:
		//room_goto(kValue);
		//break;
}