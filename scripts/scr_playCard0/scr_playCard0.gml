///@arg handPosition

//Takes the hand position, calls what scripts are necessary to play the card, then discards it.
//Maybe in the future have scr_createHitbox return the hitbox ID so stat assignments can happen here?

var card = argument0;

if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState = actorStates.pivot)
{
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10;
}

if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card && alarm[1] == 0)
{
	hitbox = scr_createHitbox(obj_player.x,obj_player.y,0,5,spr_card0,obj_player.id,60,obj_player.facing,up,1,1,50,10,1);
	scr_discardCard(card);
	obj_player.alarm[1] = 60;
	
	obj_camera.offset = 20;
	obj_camera.mode = camMode.overshoot;
	obj_camera.alarm[0] = 60
}

if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{
	obj_player.spellQueue = noone;	
	obj_player.alarm[1] = 1;
}