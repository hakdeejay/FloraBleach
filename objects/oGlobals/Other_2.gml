/// @description

randomize(); //create a new seed.

global.flowers=0;
global.trees=0;
global.mushrooms=0;
global.total=0;
global.roomIndex=1;

global.roomIndexes = [];

global.selfPlay = false; //my attempt at playing itself

// read the rooms into a variable
for (var i = room_first; i <= room_last; i++) {
  if (room_exists(i)) {
    var tmpName = room_get_name(i);
    global.roomIndexes[i] = tmpName;
	show_debug_message(string(i)+" "+tmpName);
  }
}

enum incidentals
{
	bucket, crate, flutterby, wall
}

enum plants
{
	flower, tree, mushroom
}