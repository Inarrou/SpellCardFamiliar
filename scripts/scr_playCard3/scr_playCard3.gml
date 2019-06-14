///@arg handPosition

var card = argument0;


if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState = actorStates.pivot)
{
	//add startup animation - moveback possibly?
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10;
}

if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card)
{
	//i think it needs to be in a while loop. like everything, including the hbox and everything. or something idk im losing my mind.
	var tspeed = 5;
	//the tspeed as the alarm and the 'speed' of the hitbox syncs the two together, but hitbox detection no longer does stuff.
	var hbox = scr_createHitbox(obj_player.x, obj_player.y, 0,0, spr_player_up, obj_player.id, 120, obj_player.facing, up, tspeed, 5, 60, 10, 1);
	
	//this part below throws the player forward if they have no input.  Need to somehow lock input for the player so they can't do anything.
	//and then somehow lock the two together.
	speed = tspeed;
	friction = 0;
	alarm[1] = 120;
	
	scr_discardCard(card);
}

if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{
	alarm[1] = 10;
	spellQueue = noone;
}