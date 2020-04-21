//Check if owner exists
//If it doesn't for 10 frames, then destroy self

if(owner != noone) //Changes size of the hand according to the max
{
	noOwner = 0;
	if(ds_list_size(monHand) < owner.handSize)
	{
		ds_list_add(monHand, noone); //Adds an empty slot	
	}
	if(ds_list_size(monHand) > owner.handSize)
	{
		var emptySlot = ds_list_find_index(monHand, noone); //Tries to find a slot without a card
		if (emptySlot != -1)
			ds_list_delete(monHand, emptySlot);	//Removes it if found
	}
}
else
{//Destroys self if there isn't an owner for 10 frames
	noOwner++
	if(noOwner >= 10)
		instance_destroy(self);
}