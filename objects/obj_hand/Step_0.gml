///Moves cards into correct places, and then draws them
for(var i = 0; i<handMax; i++)
{
	if(ds_list_find_value(hand,i) != 0) //If a card exists in that index, draw it
	{
		var handPosition = ds_list_find_value(hand,i);
		handPosition.visible = true;
		handPosition.y = (room_height * 0.8); //Draws at the bottom 1/5th of the screen
		handPosition.x = (room_width * 0.8) / (handMax * 2)  + (handPosition.sprite_width * i * 1.5); //divides 80% of the screen into pieces
	}
}

if(ds_list_size(hand) > handMax) //Checks to make sure there are only up to the max cards in hand
{
	scr_discardCard(ds_list_find_value(hand,ds_list_size(hand)-1)); //Discards the card if it's over limit
}