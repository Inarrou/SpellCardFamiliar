///@arg handPosition

var card = argument0;
var dir = right;

scr_createHitbox(room_width/2,room_height/2,100,100,spr_card2,noone,300,dir,upRight,1,1,1,1,1);
scr_createHitbox(room_width/2,room_height/2,-100,100,spr_card2,noone,300,dir,upLeft,1,1,1,1,1);
scr_createHitbox(room_width/2,room_height/2,0,100,spr_card2,noone,300,dir,up,1,1,1,1,1);
scr_discardCard(card);