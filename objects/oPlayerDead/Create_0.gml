/// @description Setup sound and slow mo

hsp = 3;
vsp = -4;
grv = 0.1;
done = 0;

image_speed=0;
image_index=0;

global.PlayerDeaths ++; //tallly up players death count

audio_play_sound(snDeath,10,false);
game_set_speed(30,gamespeed_fps); //slow motion effect

with (oCamera) follow = other.id; //changing object will stop camera following oPlayer
