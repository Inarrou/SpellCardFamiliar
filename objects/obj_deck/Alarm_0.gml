///@description Draw timer
if(currentCards > 0) //Draws a card if there are any cards left
{
	scr_drawCard(id, ds_list_find_value(deck,0));
}
else if(ds_list_empty(discard) == false) //Otherwise shuffles the deck then draws a card
{
	scr_shuffleDeck(id);
	scr_drawCard(id, ds_list_find_value(deck,0));
}
alarm[0] = room_speed * drawTimer;