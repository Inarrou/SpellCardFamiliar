//Basic hitboxes, that only do damage

owner = noone;
direction = up;
facing = direction;
speed = 0;
damage = 0; //base damage
hitstun = 10;
hitstop = 10;
knockbackDecay = 0;
knockbackStrength = 0;
eleType = elemental.neutral;
alarm[0] = -1; //hitstopping the hitbox itself
alarm[1] = 60; //lifespan of the hitbox
hasBeenHit = ds_list_create();

tempSpeed = 0; //used for resetting speed after hitstop
//Used for damage calculation
tempDamage = 0;
damageMult = 1;
damageAdd = 0;

onHitEffect[0] = noone; //script for on hit effect
onEndEffect = noone; //script for end of lifespan effect

hitsBullets = false;