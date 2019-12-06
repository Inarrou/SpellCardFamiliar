/// @description Adjusts priority

if(playability == true) //Only check priority if card is playable
{
	if(cardPrio != noone)
	{
		script_execute(cardPrio);
	}
	
	if(minPlayRange == 0 && maxPlayRange == 0) 
	{	//Cards with no range are always in range
		playPriority -= 1;
	}
	else if(owner.distance > minPlayRange && owner.distance < maxPlayRange)
	{
		playPriority -= 1;
	}
	
	playPriority -= cyclesInHand;
}
else
{
	playPriority = 99;	
}

if(playPriority < 0) //Bottoms out priority at 0
playPriority = 0;