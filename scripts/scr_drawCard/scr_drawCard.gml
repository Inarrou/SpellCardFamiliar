///@arg deckOrigin
///@arg cardDrawn

//Draws a single card from a deck of choice

var deckOrigin = argument0;
var cardDrawn = argument1;

with(obj_hand)//Directly working with the hand object
{
	for(var i = 0; i < handMax; i++) //Searches for empty slot in hand
	{
		if(ds_list_find_value(hand,i) == 0) //Once an empty slot is found adds card
		{
			ds_list_replace(hand,i,cardDrawn); //Adds card to hand
			ds_list_delete(deckOrigin.deck,0); //remove it from top of deck
			return(0); //Ends loop
		}
	}
	ds_list_add(deckOrigin.discard, cardDrawn); //if no empty hand slots, add card straight to discard
	ds_list_delete(deckOrigin.deck,0); //remove it from top of deck
}