///@arg handPosition

var card = argument0;

if(global.playerState == playerStates.neutral || global.playerState == playerStates.moving || global.playerState = playerStates.pivot)
{
	obj_player.spellQueue = card;
	global.playerState = playerStates.startUp;
	obj_player.alarm[1] = 10;
}

if(global.playerState == playerStates.casting && obj_player.spellQueue == card)
{
	hitbox = scr_createHitbox(obj_player.x,obj_player.y,0,0,spr_card1,obj_player.id,600,global.playerFacing,up,0,1,60,20,1);
	scr_discardCard(card);
	obj_player.spellQueue = noone;
	obj_player.alarm[1] = 10;
}