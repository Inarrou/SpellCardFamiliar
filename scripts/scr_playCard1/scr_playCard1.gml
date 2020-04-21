///@arg handPosition
//Stone Skin

var card = argument0;

if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState = actorStates.pivot)
{
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10;
}

if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card && alarm[1] == 0)
{
	var stoneSkin = instance_create_layer(x,y,"GUI",obj_statusEffect);
	stoneSkin.pullTags[0] = hooks.hurt;
	stoneSkin.pullEffect = scr_stoneSkinPull;
	ds_list_add(statusBar, stoneSkin);
	scr_cleanUp(card);
	obj_player.alarm[1] = 1;
}


if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{
	obj_player.spellQueue = noone;	
	obj_player.alarm[1] = 10;
}