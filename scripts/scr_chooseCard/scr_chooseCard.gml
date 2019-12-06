///@arg monHand

var monHand = argument0; //Hand to search

var currentPrio = 100;
sortedHand[0] = noone; //Filtered for lowest priority cards

for(var i = 0; i < array_length_1d(monHand); i++)
{//Check for the lowest priority in hand
	if(monHand[i] != noone) //makes sure there's a card in that hand slot
	{
		if(monHand[i].playPriority < currentPrio)
		{
			currentPrio	= monHand[i].playPriority;
		}
	}
}

for(var i = 0; i < array_length_1d(monHand); i++)
{//Places the cards of that priority hand the sorted hand
	if(monHand[i] != noone) //makes sure there's a card in that hand slot
	{
		if(monHand[i].playPriority == currentPrio)
		sortedHand[array_length_1d(sortedHand)] = monHand[i];
	}
}
//Selects a random card from the array to be the played card
if(array_length_1d(sortedHand) > 1)
return(sortedHand[irandom_range(1,array_length_1d(sortedHand) - 1)]);
else
return(noone);//incase hand was empty, choose no card