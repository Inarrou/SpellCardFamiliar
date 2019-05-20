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
	scr_createHitbox(obj_player.x,obj_player.y,100,100,spr_card2,obj_player.id,300,obj_player.playerFacing,upRight,1,1,60,10,1);
	scr_createHitbox(obj_player.x,obj_player.y,-100,100,spr_card2,obj_player.id,300,obj_player.playerFacing,upLeft,1,1,60,10,1);
	scr_createHitbox(obj_player.x,obj_player.y,0,100,spr_card2,obj_player.id,300,obj_player.playerFacing,up,1,1,60,10,1);
	obj_player.alarm[1] = 10;
	scr_discardCard(card);
}


if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{
	obj_player.spellQueue = noone;	
	obj_player.alarm[1] = 1;
}