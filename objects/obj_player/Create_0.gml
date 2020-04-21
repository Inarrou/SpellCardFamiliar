//The player character has its own set of variables to worry about

global.playerHP = 1;
global.playerMaxHP = 1;
playerState = actorStates.neutral;
facing = up; //Used for drawing, and for determining which side a hit box is created
listening = true; //Used for hooks to interrupt/change running code
broadcast = ds_list_create();
statusBar = ds_list_create();
defence = 0;

knockback = 0;
tempKnockback = 0;
weight = 50;

for(var i = 0; i <= 10; i++)
eleRes[i] = 0;

direction = up; //Used for movement in a direction, can be independant of facing direction
friction = 0.2; //Used for slower the player down if no key is pressed
hspeed = 0; //Independant speed per axis, in order to allow for inertia in one direction
vspeed = 0;

alarm[0] = -1; //Used to pause step event if running

spellQueue = noone; //Set to a pointer to whichever card is being played.
alarm[1] = -1;

movSpeed = 5;