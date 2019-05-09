///@arg handPosition

var card = argument0;

if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState = actorStates.pivot)
{
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10;
}

if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card)
{
	hitbox = scr_createHitbox(obj_player.x,obj_player.y,0,0,spr_card1,obj_player.id,600,obj_player.playerFacing,up,0,1,60,20,1);
	scr_discardCard(card);
	obj_player.spellQueue = noone;
	obj_player.alarm[1] = 10;
}