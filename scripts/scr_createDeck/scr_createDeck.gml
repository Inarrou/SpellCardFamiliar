///@arg Decklist
//Takes the decklist and uses it to create a deck object, and populates it with cards from the list

var deckList = argument0;

switch(instance_number(obj_deck)) //Determines the coordinates to put a new deck depending on how many exist
{
case 0:
	_x = display_get_gui_width() * (27/32);
	_y = display_get_gui_height() * (3/4);
	break;
case 1:
	_x = display_get_gui_width() * (29/32);
	_y = display_get_gui_height() * (3/4);
	break;
case 2:
	_x = display_get_gui_width() * (27/32);
	_y = display_get_gui_height() * (7/8);
	break;
case 3:
	_x = display_get_gui_width() * (29/32);
	_y = display_get_gui_height() * (7/8);
	break;
default:
	_x = 0;
	_y = 0;
	break;
}

var newDeck = instance_create_layer(_x, _y, "GUI", obj_deck);

for(var i = 0; i < ds_list_size(deckList); i++)
{
	//Fills the new deck with cards
	ds_list_add(newDeck.deck, scr_createCard(newDeck, ds_list_find_value(deckList,i))) 
}

ds_list_shuffle(newDeck.deck);