if(keyboard_check_pressed(ord("Z")))
{
	//Check if card is already in master deck (if < 4 then more can be added)
	if(scr_amountInList(totalDeckList,cursorPos) < 4)
	{
		//Check if it is in current deck (if < 3 then more can be added)
		if(scr_amountInList(subDeck[deckSelected], cursorPos) < 3)
		{
			if(ds_map_find_value(cardsOwned, string(cursorPos)) > 0)
			{
				ds_list_add(totalDeckList, cursorPos);
				ds_list_add(subDeck[deckSelected], cursorPos);
				ds_map_replace(cardsOwned, string(cursorPos), ds_map_find_value(cardsOwned, string(cursorPos)) - 1);
			}
		}
	}
}

if(keyboard_check_pressed(ord("X")))
{
	if(scr_amountInList(subDeck[deckSelected], cursorPos) > 0)
		{
			ds_list_delete(totalDeckList, ds_list_find_index(totalDeckList,cursorPos));
			ds_list_delete(subDeck[deckSelected], ds_list_find_index(subDeck[deckSelected],cursorPos));
			ds_map_replace(cardsOwned, string(cursorPos), ds_map_find_value(cardsOwned, string(cursorPos)) + 1);
		}
}


if(keyboard_check_pressed(vk_left)) //Moves the selected card left
{
	cursorPos--;
	
	if(cursorPos < 0)
	{
		cursorPos = cardsActive - 1;
	}
}

if (keyboard_check_pressed(vk_right)) //And to the right
{
	cursorPos++;
	
	if(cursorPos > cardsActive - 1)
	{
		cursorPos = 0;
	}
}

//Used to select which deck to add to or remove cards from
if(keyboard_check(ord("1"))) 
deckSelected = 1;

if(keyboard_check(ord("2")))
deckSelected = 2;

if(keyboard_check(ord("3")))
deckSelected = 3;

if(keyboard_check(ord("4")))
deckSelected = 4;

if(keyboard_check(vk_enter))
{
	room_goto(room1);
	alarm[0] = 1;
}