/// @description Setup Variables
// You can write your code in this editor

// show_debug_message("Instance Created : " + string(object_get_name(id.object_index)));

if (global.selfPlay) hascontrol=false else hascontrol=true;

// if (global.selfPlay) runSelfPlay();

hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 4;
jumpsp = 9;

//Allows for gun pickup
hasGun=false;

// this allows a late delay for jumping giving a better quality feel
// for player, allowing a late jump. Value is number of frames
lateJump=10;