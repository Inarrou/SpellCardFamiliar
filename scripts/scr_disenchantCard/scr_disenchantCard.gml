///@arg cardPlayed
//Completely removes a card from the player's inventory

var cardPlayed = argument0; //The physical card being played

with(obj_hand)
{
	var handPosition = ds_list_find_index(hand,cardPlayed); //Find out which index of the hand the card is in
	
	if(handPosition != -1) //Making sure that card is in the hand
	{
		instance_destroy(cardPlayed);
		ds_list_replace(hand,handPosition,0); //Makes that position in the hand 0 again
	}
}