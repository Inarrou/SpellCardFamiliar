if(omniscient == true)
{
	script_execute(idleScript);
}
else if(ds_list_find_index(obj_hand.hand, id)) //If this card is in the hand
{
	script_execute(idleScript);
}
// Inherit the parent event
event_inherited();