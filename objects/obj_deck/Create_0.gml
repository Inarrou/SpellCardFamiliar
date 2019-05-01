//Initialize everything
//make sure the seed is random
randomise();

alarm[0] = room_speed * 2; 

deckSize = 3; //value arbitrary, replace with player deck size later
currentCards = 0;
deckType = 0;
deckNum = id;
deck = ds_list_create();
drawTimer = 5; //arbitrary, should be based off stats later?
discard = ds_list_create();

for(var i = 0; i < deckSize; i++)
{
	var card = instance_create_layer(x - i * 64,y - i * 64,"GUI",obj_card); //Randomly creates cards
	with(card)
	{
		deckOrigin = other.deckNum; //Makes the cards recognize this deck as their origin
	}
	ds_list_add(deck, card); 
}

currentCards = deckSize;

deckType = irandom_range(0,1); //Decides if the deck is blue/red

if(currentCards > 0)
{
	scr_drawCard(deckNum, ds_list_find_value(deck,0));
	currentCards --;
}