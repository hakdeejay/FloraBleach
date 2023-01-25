/// @description Insert description here
// You can write your code in this editor


//create particle layer
global.partSystem=part_system_create_layer("Particles",true);


//sett up flower cured particles
global.particleCured = part_type_create();
part_type_shape(global.particleCured, pt_shape_flare);
part_type_size(global.particleCured, 0.01,0.05,0,0.5);
part_type_color3(global.particleCured, c_aqua,c_lime,c_red);
part_type_alpha3(global.particleCured, 0.5,1,0);
part_type_speed(global.particleCured,2,5,-0.10,0);
part_type_direction(global.particleCured, 0,359,0,20);
part_type_blend(global.particleCured,true);
part_type_life(global.particleCured,30,60);

//setup flutterby particles
global.particleFlutterBy = part_type_create();
part_type_sprite(global.particleFlutterBy, sFlutterByFlying, true, false, true);

part_type_size(global.particleFlutterBy, 1,1,0,0);
//part_type_color3(global.particleFlutterBy, c_aqua,c_lime,c_red);
part_type_alpha3(global.particleFlutterBy, 0.5,1,0);
part_type_speed(global.particleFlutterBy,1,5,.1,0.5);
part_type_direction(global.particleFlutterBy, 0,180,0,0.5);
//part_type_blend(global.particleFlutterBy,true);
part_type_life(global.particleFlutterBy,30,45);

