///@arg home_Deck
///@arg card_ID

var homeDeck = argument0;
var cardToAdd = argument1;

var card = instance_create_layer(x,y,"GUI", obj_card);
card.deckOrigin = homeDeck;
card.cardID = cardToAdd;

switch(cardToAdd) //Gives the card its appropriate play script, should eventually refer to a table
{//For now this is done manually
case 0: 
	card.playCard = scr_playCard0;
	break;
case 1:
	card.playCard = scr_playCard1;
	break;
case 2:
	card.playCard = scr_playCard2;
	break;
case 3:
	card.playCard = scr_playCard3;
	break;
default:
	instance_destroy(card);
	break;
}

return(card);