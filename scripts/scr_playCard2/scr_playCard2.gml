///@arg handPosition

var card = argument0;


if(global.playerState == playerStates.neutral || global.playerState == playerStates.moving || global.playerState = playerStates.pivot)
{
	obj_player.spellQueue = card;
	global.playerState = playerStates.startUp;
	obj_player.alarm[1] = 60;
}

if(global.playerState == playerStates.casting && obj_player.spellQueue == card)
{
	scr_createHitbox(obj_player.x,obj_player.y,100,100,spr_card2,noone,300,global.playerFacing,upRight,1,1,1,1,1);
	scr_createHitbox(obj_player.x,obj_player.y,-100,100,spr_card2,noone,300,global.playerFacing,upLeft,1,1,1,1,1);
	scr_createHitbox(obj_player.x,obj_player.y,0,100,spr_card2,noone,300,global.playerFacing,up,1,1,1,1,1);
	obj_player.spellQueue = noone;
	obj_player.alarm[1] = 10;
	scr_discardCard(card);
}