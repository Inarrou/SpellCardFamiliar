image_angle = facing - 90; //Placeholder, should set sprite in specific input for direction
if(alarm[0] < 0) //If not hitstopped, the player can do things
{
	if(spellQueue != noone)
	{
		script_execute(spellQueue.playCard, spellQueue);
	}
	scr_playerMovement();
}
else //when hitstopped
{
	image_speed = 0; //Pauses current animation
	speed = 0; //Freeze player in space
}
//Later, use animation frames and compare to start up to determine if player should cast a spell