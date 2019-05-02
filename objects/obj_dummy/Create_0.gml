/// @description
HP = 100;
hostility = teams.hostile; //determines whether something is allied to the player or not
state = actorStates.neutral; //determines what actions the actor can perform
hitstun = 0;
alarm[0] = -1; //skips the step event if this is running, used for hitstop
image_index = 0;
image_speed = 0;