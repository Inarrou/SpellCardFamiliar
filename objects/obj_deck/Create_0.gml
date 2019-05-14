//Initialize everything
//make sure the seed is random

currentCards = 0;
deckType = 0;
drawTimer = 5; //arbitrary, should be based off stats later?
deck = ds_list_create();
discard = ds_list_create();

deckType = irandom_range(0,1); //Decides if the deck is blue/red

alarm[0] = room_speed * drawTimer; 