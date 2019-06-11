///Moves cards into correct places, and then draws them
for(var i = 0; i<handMax; i++)
{
	if(ds_list_find_value(hand,i) != 0) //If a card exists in that index, draw it
	{
		var handPosition = ds_list_find_value(hand,i);
		handPosition.visible = true;
		handPosition.image_xscale = 2;
		handPosition.image_yscale = 2;
		handPosition.y = (display_get_gui_height() * 0.8); //Draws at the bottom 1/5th of the screen
		handPosition.x = (display_get_gui_width() * 0.8) / (handMax * 2)  + (handPosition.sprite_width * i * 1.5); //divides 80% of the screen into pieces
	}
}
