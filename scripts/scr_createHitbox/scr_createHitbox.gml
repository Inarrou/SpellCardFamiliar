//Used to create a hitbox that spawns diagonally in front of where the player is facing
//Used to create a hitbox that spawns directly in front of the player
///@arg xpos
///@arg ypos
///@arg offsetX
///@arg offsetY
///@arg sprite
///@arg owner
///@arg duration
///@arg facing
///@arg trajectory
///@arg speed
///@arg damage
///@arg hitstun
///@arg hitstop
///@arg knockback

var xpos = argument0; 
var ypos = argument1;
var offsetX = argument2; //How far to the side the hitbox is
var offsetY = argument3 //How far ahead the hitbox is
var sprite = argument4; //Which hitbox to use
var owner = argument5; //Who made the hitbox
var duration = argument6; //How long (in frames) the hitbox exists for
var facing = argument7 //Which direction the player is facing
var trajectory = argument8; //which direction the hitbox is travelling in
var movSpeed = argument9; //How quickly the hitbox is moving
var damage = argument10;
var hitstun = argument11;
var hitstop = argument12;
var knockback = argument13;

var totalOffset = scr_directionFixer(facing,trajectory,offsetX,offsetY);

//Depending on trajectory, the hitboxes have to be placed at different spots relative to the player

//After creation, each of the hitboxes' parameters must be set to the appropriate values
	var hitbox = instance_create_depth(xpos + totalOffset[0], ypos + totalOffset[1], 2, obj_hitbox);
	hitbox.sprite_index = sprite;
	hitbox.owner = owner;
	hitbox.alarm[1] = duration;
	hitbox.direction = totalOffset[2];
	hitbox.speed = movSpeed;
	hitbox.damage = damage;
	hitbox.hitstun = hitstun;
	hitbox.hitstop = hitstop;
	hitbox.knockback = knockback;
	
	return hitbox.id;