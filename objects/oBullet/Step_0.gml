/// @description Insert description here
// You can write your code in this editor

life--; //life of bullet, so doesn't stay on screen
decay=decay+decayRate;
y=y+decay;


if (life<=0) instance_destroy();




