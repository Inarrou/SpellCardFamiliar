///@arg card

//Handles getting rid of a card after playing it

var card = argument0;

scr_giveTag(hooks.cleanup, statusBar); //Checks if any effects change how the card is cleaned up

if(card.cleanUpTemp == cardCleanUp.discard)
{
	scr_discardCard(card);
	scr_giveTag(hooks.discard, statusBar);
	
	if(card.cleanUpTemp != card.cleanUp)
		card.cleanUpTemp = card.cleanUp
}
else if(card.cleanUpTemp == cardCleanUp.deplete)
{
	scr_depleteCard(card);
	scr_giveTag(hooks.deplete, statusBar);
	
	if(card.cleanUpTemp != card.cleanUp)
		card.cleanUpTemp = card.cleanUp
}
else if(card.cleanUpTemp == cardCleanUp.disenchant)
{
	scr_disenchantCard(card);
	scr_giveTag(hooks.deplete, statusBar);
}