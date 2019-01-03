/// @description Used for animation
//When the timer is finished, it will execute whatever spell is in spellQueue
//Depending on the current player state, spellQueue will behave slightly differently
//The card's play function should include cases for playerstate, if no case exists then it won't have any effect during that call

//Should be replaced later, needs to work off of specific animation frames.
//Instead have a variable called startUp, and when frame count reaches that number, call script

if(global.playerState == playerStates.startUp)
{
	global.playerState = playerStates.casting; //Set the player state to the next state
	if(spellQueue != noone) //Make sure there's something queued up
	script_execute(spellQueue.playCard(spellQueue));
}

if(global.playerState == playerStates.casting)
{
	global.playerState = playerStates.recovery;
	if(spellQueue != noone)
	script_execute(spellQueue.playCard(spellQueue));
}

if(global.playerState == playerStates.recovery)
{
	global.playerState = playerStates.neutral;
	if(spellQueue != noone)
	script_execute(spellQueue.playCard(spellQueue));
}