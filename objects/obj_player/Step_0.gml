image_angle = global.playerFacing - 90; //Placeholder, should set sprite in specific input for direction
if(hitstop > 0) //If hitstopped, the player can't do anything
{
	image_speed = 0; //Pauses current animation
	speed = 0; //Freeze player in space
}
else
{ 
	scr_playerMovement(); //Hiding movement in a script for readability
}