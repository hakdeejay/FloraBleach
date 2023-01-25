/// @description Setup Camera
// You can write your code in this editor

if (instance_exists(follow)) //does the player object exist, set co-ords to move camera to player
{
	xTo = follow.x;
	yTo = follow.y;
}

x += (xTo - x) / 25; //take player x in xTo, take away camera x and divide reslut by 25
y += (yTo - y) / 25; //this effectively creates a smooth following camera

// clamped to avoid seeing edge of tileset
x = clamp(x,view_w_half+buffered,room_width-view_w_half-buffered); //when reaching the edges of the room area, clamp
y = clamp(y,view_h_half+buffered,room_height-view_h_half-buffered);//both the widt and height so camera stays witin room

//screen shake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);
shakeRemain = max(0,shakeRemain-((1/shakeLength)*shakeMagnitude));


camera_set_view_pos(cam,x-view_w_half,y-view_h_half); //set camera x,y

//parallax background movement
if (layer_exists("Mountains")) layer_x("Mountains",x/2);
if (layer_exists("Trees")) layer_x("Trees",x/4); //uses camera's x to find new position
if (layer_exists("Clouds")) layer_x("Clouds",x/3);