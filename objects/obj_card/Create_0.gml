//initialize everything
visible = false;
image_speed = 0;
deckOrigin = noone; //The deck this card comes from
cardID = irandom_range(0,2);

if (cardID == 0)
{
	playCard = scr_playCard0;
}

if (cardID == 1)
{
	playCard = scr_playCard1;
}

if (cardID == 2)
{
	playCard = scr_playCard2;
}