///Draw timer
if(currentCards > 0) //Draws a card if there are any cards left
{
	scr_drawCard(deckNum, ds_list_find_value(deck,0));
	currentCards--;
}
else if(ds_list_empty(discard) == false) //Otherwise shuffles the deck then draws a card
{
	scr_shuffleDeck(deckNum);
	scr_drawCard(deckNum, ds_list_find_value(deck,0));
	currentCards--;
}
alarm[0] = room_speed * drawTimer;