///@arg handPosition

//Takes the hand position, calls what scripts are necessary to play the card, then discards it.
//Maybe in the future have scr_createHitbox return the hitbox ID so stat assignments can happen here?

var card = argument0;

if(global.playerState == playerStates.neutral || global.playerState == playerStates.moving || global.playerState = playerStates.pivot)
{
	obj_player.spellQueue = card;
	global.playerState = playerStates.startUp;
	obj_player.alarm[1] = 10;
}

if(global.playerState == playerStates.casting && obj_player.spellQueue == card)
{
	hitbox = scr_createHitbox(obj_player.x,obj_player.y,0,5,spr_card0,obj_player.id,60,global.playerFacing,up,1,1,50,10,1);
	scr_discardCard(card);
	obj_player.spellQueue = noone;
	obj_player.alarm[1] = 60;
}