//The player character has its own set of variables to worry about

global.playerHP = 1;
global.playerMaxHP = 1;
global.playerState = playerStates.neutral;
global.playerFacing = up; //Used for drawing, and for determining which side a hit box is created

direction = up; //Used for movement in a direction, can be independant of facing direction
friction = 0.2; //Used for slower the player down if no key is pressed
hspeed = 0; //Independant speed per axis, in order to allow for inertia in one direction
vspeed = 0;

hitstop = alarm[0]; //Used to pause step event if running
hitstop = -1; //Pauses the timer

spellQueue = noone; //Set to a pointer to whichever card is being played.
//startUp = 0; Used later for casting spells. 
alarm[1] = -1;

movSpeed = 5;