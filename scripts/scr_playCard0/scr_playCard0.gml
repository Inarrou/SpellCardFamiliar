///@arg handPosition

//Takes the hand position, calls what scripts are necessary to play the card, then discards it.
//Maybe in the future have scr_createHitbox return the hitbox ID so stat assignments can happen here?

var card = argument0;

scr_createHitbox(room_width/2,room_height/2,0,0,spr_card0,noone,60,up,up,1,1,1,1,1);
scr_discardCard(card);