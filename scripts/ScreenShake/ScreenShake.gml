/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude Sets the strength of the shake (radius in pixels)
/// @arg Frames Sets the length of the shake if frames (60 = 1 sec)
function ScreenShake(){
	with (oCamera)
	{
		if (argument0 > shakeRemain)
		{
			shakeMagnitude = argument0;
			shakeRemain = argument0;
			shakeLength = argument1;
		}
	}
}