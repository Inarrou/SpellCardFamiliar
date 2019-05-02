//Basic hitboxes, that only do damage

owner = noone;
direction = up;
speed = 0;
damage = 0;
hitstun = 10;
hitstop = 10;
knockback = 0;
alarm[0] = -1; //hitstopping the hitbox itself
alarm[1] = 60; //lifespan of the hitbox
hasBeenHit = ds_list_create();
tempSpeed = 0; //Used for resetting speed after hitstop