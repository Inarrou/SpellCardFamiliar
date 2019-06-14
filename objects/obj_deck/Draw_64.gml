image_index = deckType;
image_speed = 0;
if (currentCards != 0) //Draws the deck sprite when there are cards remaining
{
	draw_self();
}
draw_text(x,y,"Deck: " + string(currentCards)); //remaining cards
draw_text(x,y + 15,"Dis: " + string(ds_list_size(discard))); //Cards in discard pile