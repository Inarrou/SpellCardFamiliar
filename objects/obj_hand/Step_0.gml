if(ds_list_size(hand) > handMax) //Checks to make sure there are only up to the max cards in hand
{
	scr_discardCard(ds_list_find_value(hand,ds_list_size(hand))); //Discards the card if it's over limit
}