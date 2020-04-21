///@arg handPosition
//Shotgun

var card = argument0;

if(obj_player.playerState == actorStates.neutral || obj_player.playerState == actorStates.moving || obj_player.playerState = actorStates.pivot)
{
	obj_player.spellQueue = card;
	obj_player.playerState = actorStates.startUp;
	obj_player.alarm[1] = 10;
}

if(obj_player.playerState == actorStates.casting && obj_player.spellQueue == card && alarm[1] == 0)
{
	if(scr_giveTag(hooks.precast, statusBar) == true) //Check if anything can negate the cast
	{
		var hitbox = array_create(5);
		hitbox[0] = scr_createHitbox(obj_player.x,obj_player.y,10,sprite_height/2,spr_card2,obj_player.id,20,obj_player.facing,upRight,8,card.cardPower,60,10,1,10);
		hitbox[1] = scr_createHitbox(obj_player.x,obj_player.y,-10,sprite_height/2,spr_card2,obj_player.id,20,obj_player.facing,upLeft,8,1,60,10,1,10);
		hitbox[2] = scr_createHitbox(obj_player.x,obj_player.y,0,sprite_height/2,spr_card2,obj_player.id,20,obj_player.facing,up,8,card.cardPower,60,10,1,10);
		hitbox[3] = scr_createHitbox(obj_player.x,obj_player.y,-5,sprite_height/2,spr_card2,obj_player.id,20,obj_player.facing,112.5,8,card.cardPower,60,10,1,10);
		hitbox[4] = scr_createHitbox(obj_player.x,obj_player.y,5,sprite_height/2,spr_card2,obj_player.id,20,obj_player.facing,67.5,8,card.cardPower,60,10,1,10);
		
		obj_player.attackMods[0] = noone; //array in player object used when attacks are activated
		scr_giveTag(hooks.casted, statusBar);
		if(obj_player.attackMods[0] != noone)
		{
			for(var i = 0; i < array_length_1d(hitbox); i++)
			{
				for(var j = 0; j < array_length_1d(attackMods); j++) //Applies each mod to the hitboxes
				{
					script_execute(obj_player.attackMods[j], hitbox[i]);
				}
			}
			
			obj_camera.offset = 20;
			obj_camera.mode = camMode.overshoot;
			obj_camera.alarm[0] = 12;	
		}
	}
	obj_player.alarm[1] = 1;
	scr_discardCard(card);
}


if(obj_player.playerState == actorStates.recovery && obj_player.spellQueue == card)
{
	obj_player.spellQueue = noone;	
	obj_player.alarm[1] = 11;
}