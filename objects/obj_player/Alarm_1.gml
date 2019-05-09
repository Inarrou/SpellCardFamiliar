/// @description Used for animation
//When the timer is finished, it will execute whatever spell is in spellQueue
//Depending on the current player state, spellQueue will behave slightly differently
//The card's play function should include cases for playerstate, if no case exists then it won't have any effect during that call

//Should be replaced later, needs to work off of specific animation frames.
//Instead have a variable called startUp, and when frame count reaches that number, call script

if(playerState == actorStates.startUp)
{
	playerState = actorStates.casting; //Set the player state to the next state
	if(spellQueue != noone) //Make sure there's something queued up
	script_execute(spellQueue.playCard,spellQueue);
}

if(playerState == actorStates.casting)
{
	playerState = actorStates.recovery;
	if(spellQueue != noone)
	script_execute(spellQueue.playCard,spellQueue);
}

if(playerState == actorStates.recovery)
{
	playerState = actorStates.neutral;
	alarm[1] = -1;
	if(spellQueue != noone)
	script_execute(spellQueue.playCard,spellQueue);
}