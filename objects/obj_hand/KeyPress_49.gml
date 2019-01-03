//Plays the card in this hand slot
if(ds_list_find_value(hand,0) != 0)
script_execute(ds_list_find_value(hand,0).playCard,ds_list_find_value(hand,0));