///@arg home_Deck
///@arg card_ID

var homeDeck = argument0;
var cardToAdd = argument1;

var card = instance_create_layer(x,y,"GUI", obj_card);
card.deckOrigin = homeDeck;
card.cardID = cardToAdd;

card.cardName = global.cardLibrary[# cardToAdd, cardData.NAME];
card.cardRare = global.cardLibrary[# cardToAdd, cardData.RARITY];
card.cardType = global.cardLibrary[# cardToAdd, cardData.TYPE];
card.cardElement = global.cardLibrary[# cardToAdd, cardData.ELEMENT];
card.cardColour = global.cardLibrary[# cardToAdd, cardData.COLOUR];
card.cardPower = global.cardLibrary[# cardToAdd, cardData.POWER];

card.playCard = global.cardLibrary[# cardToAdd, cardData.SCRIPT];

card.cardTags = global.cardLibrary[# cardToAdd, cardData.TAGS];
card.description = global.cardLibrary[# cardToAdd, cardData.DESCRIPTION];
card.flavour = global.cardLibrary[# cardToAdd, cardData.FLAVOUR];

return(card);