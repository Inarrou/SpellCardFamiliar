///@arg handPosition

//Fireball

var card = argument0;

//Does a different action depending on player state
if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState == actorStates.pivot)
{//Start up
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10; //when alarm finishes, player state changes
}
if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card && alarm[1] == 0)
{//Active
	if(scr_giveTag(hooks.precast, statusBar) == true) //Check if anything can negate the cast
	{
		var hitbox = scr_createHitbox(x,y,0,sprite_height,spr_card0,id,180,facing,up,3,card.cardPower,50,5,5,5);
		obj_player.attackMods[0] = noone; //array in player object used when attacks are activated
		scr_giveTag(hooks.casted, statusBar);
		if(obj_player.attackMods[0] != noone)
		{
			for(var i = 0; i < array_length_1d(attackMods); i++) //Applies each mod to the hitbox
			{
				script_execute(obj_player.attackMods[i], hitbox);
			}
		}
	
		obj_camera.offset = 20;
		obj_camera.mode = camMode.overshoot;
		obj_camera.alarm[0] = 20;
	}
	
	scr_cleanUp(card);
	obj_player.alarm[1] = 1;
}
if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{//Recovery
	obj_player.spellQueue = noone;	
	obj_player.alarm[1] = 19;
}