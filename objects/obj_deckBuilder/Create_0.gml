//Uses ds_grids to keep track of the various cards in the decks
//Once the player selects ready the cards and decks will be generated in the next room
randomise();

global.decksActive = 4; //how many decks are active, in the future move this somewhere better
cursorPos = 0; //Which card is highlighted
deckSelected = 1; //Which deck to add to
totalDeckList = ds_list_create();
cardsActive = 5; //How many cards are available to be used

//Need to create a new list for every sub deck as well

for(var i = global.decksActive; i > 0; i--)
{
	subDeck[i] = ds_list_create();	
}
//Which cards the player has, and how many, should be loaded from save file
cardsOwned = ds_map_create(); 
for(var i = 0; i < 5; i++)
{
	ds_map_add(cardsOwned, string(i), irandom_range(3,5)); //adds card id and random amount from 3-5 of that card
}