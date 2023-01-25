/// @description Update Camera
// You can write your code in this editor

cam = view_camera[0]; //reference to instance of camera 0

follow = oPlayer; //reference to instance of player;

view_w_half = camera_get_view_width(cam) * 0.5; //get half distance of camera width
view_h_half = camera_get_view_height(cam) * 0.5;//get half distance of camera height

xTo = xstart; //assign camera's x
yTo = ystart; //assign camera's y

//shake screen variables
shakeLength = 0;
shakeMagnitude = 0;
shakeRemain = 0;
buffered = 32;