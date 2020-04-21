///@arg home_Deck
///@arg card_ID

var homeDeck = argument0;
var cardToAdd = argument1;

switch(global.cardLibrary[# cardToAdd, cardData.TYPE])
{
	case cardType.active:
		var card = instance_create_layer(x,y,"GUI", obj_card);
		break;
	case cardType.channel:
		var card = instance_create_layer(x,y,"GUI", obj_cardChannel);
		card.channelHold = global.cardLibrary[# cardToAdd, cardData.EXTRA1];
		card.channelMax = global.cardLibrary[# cardToAdd, cardData.EXTRA2];
		break;
	case cardType.freeCast:
		var card = instance_create_layer(x,y,"GUI", obj_cardFreeCast);
		card.whileHurt = global.cardLibrary[# cardToAdd, cardData.EXTRA1];
		break;
	case cardType.combo:
		var card = instance_create_layer(x,y,"GUI", obj_cardCombo);
		card.continuous = global.cardLibrary[# cardToAdd, cardData.EXTRA1];
		card.comboMax = global.cardLibrary[# cardToAdd, cardData.EXTRA2];
		break;
	case cardType.reactive:
		var card = instance_create_layer(x,y,"GUI", obj_cardReactive);
		card.omniscient = global.cardLibrary[# cardToAdd, cardData.EXTRA1];
		break;
	default:
	return(false);
}

card.deckOrigin = homeDeck;
card.cardID = cardToAdd;

card.cardName = global.cardLibrary[# cardToAdd, cardData.NAME];
card.cardRare = global.cardLibrary[# cardToAdd, cardData.RARITY];
card.cardElement = global.cardLibrary[# cardToAdd, cardData.ELEMENT];
card.cardColour = global.cardLibrary[# cardToAdd, cardData.COLOUR];
card.cardPower = global.cardLibrary[# cardToAdd, cardData.POWER];

card.playCard = global.cardLibrary[# cardToAdd, cardData.SCRIPT];

card.cardTags = global.cardLibrary[# cardToAdd, cardData.TAGS];
card.description = global.cardLibrary[# cardToAdd, cardData.DESCRIPTION];
card.flavour = global.cardLibrary[# cardToAdd, cardData.FLAVOUR];

return(card);