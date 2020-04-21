/// @description
HP = 100;
hostility = teams.hostile; //determines whether something is allied to the player or not
state = actorStates.neutral; //determines what actions the actor can perform
hitstun = 0;
facing = down;
movSpeed = 3;
handSize = 1;
defence = 0;

for(var i = 0; i <= 10; i++)
eleRes[i] = 0;

statusBar = ds_list_create();

image_index = 0;
image_speed = 0;