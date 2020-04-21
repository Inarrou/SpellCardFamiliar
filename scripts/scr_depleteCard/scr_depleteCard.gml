///@arg cardPlayed
//Removes a card from play by placing it into the depleted pile

var cardPlayed = argument0; //The physical card being played

with(obj_hand)
{
	var handPosition = ds_list_find_index(hand,cardPlayed); //Find out which index of the hand the card is in
	
	if(handPosition != -1) //Making sure that card is in the hand
	{
		ds_list_add(depleted, cardPlayed); //Add that played card to discard
		cardPlayed.visible = false; //Make it invisible again
		cardPlayed.x = 0;
		cardPlayed.y = 0;
		ds_list_replace(hand,handPosition,0); //Makes that position in the hand 0 again
	}
}