if(playerState == actorStates.neutral)
{
	friction = 0.5
	if(keyboard_check_direct(vk_up))
	{
		playerFacing = up;
		direction = up;
		speed = movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check_direct(vk_down))
	{
		playerFacing = down;
		direction = down;
		speed = movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check_direct(vk_left))
	{
		playerFacing = left;
		direction = left;
		speed = movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check_direct(vk_right))
	{
		playerFacing = right;
		direction = right;
		speed = movSpeed;
		playerState = actorStates.moving;
	}
}
else if (playerState == actorStates.moving)
{
	friction = 0.5;
	switch(playerFacing)
	{
/*--------------------------FACING UP-------------------------*/
	case up:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_down)) //Check if the player is moving in the opposite direction
		{
			playerFacing = down;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_up)) 
			{
				if(keyboard_check_direct(vk_left) && !keyboard_check_direct(vk_right))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_right) && !keyboard_check_direct(vk_left))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else
				{
					playerFacing = up;
					direction = up;
					speed = movSpeed;
					//set sprite index to running up
				}
			}
			else if(keyboard_check_direct(vk_left))
			{
				playerFacing = left;
				direction = left;
				speed = movSpeed;
			}
			else if(keyboard_check_direct(vk_right))
			{
				playerFacing = right;
				direction = right;
				speed = movSpeed;
			}
		}
		break;
/*-------------------------------FACING DOWN-----------------------------*/
	case down:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_up)) //Check if the player is moving in the opposite direction
		{
			playerFacing = up;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_down)) 
			{
				if(keyboard_check_direct(vk_left) && !keyboard_check_direct(vk_right))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running down left
				}
				else if(keyboard_check_direct(vk_right) && !keyboard_check_direct(vk_left))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running down right
				}
				else
				{
					playerFacing = down;
					direction = down;
					speed = movSpeed;
					//set sprite index to running down
				}
			}
			else if(keyboard_check_direct(vk_left))
			{
				playerFacing = left;
				direction = left;
				speed = movSpeed;
			}
			else if(keyboard_check_direct(vk_right))
			{
				playerFacing = right;
				direction = right;
				speed = movSpeed;
			}
		}
		break;
	/*----------------------------------LEFT INPUT--------------------------*/
	case left:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_right)) //Check if the player is moving in the opposite direction
		{
			playerFacing = right;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_left)) 
			{
				if(keyboard_check_direct(vk_up) && !keyboard_check_direct(vk_down))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_down) && !keyboard_check_direct(vk_up))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running down left
				}
				else
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
					//set sprite index to running up
				}
			}
			else if(keyboard_check_direct(vk_up))
			{
				playerFacing = up;
				direction = up;
				speed = movSpeed;
			}
			else if(keyboard_check_direct(vk_down))
			{
				playerFacing = down;
				direction = down;
				speed = movSpeed;
			}
		}
		break;
		/*------------------------------------RIGHT INPUT-----------------------------------*/
	case right:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_left)) //Check if the player is moving in the opposite direction
		{
			playerFacing = left;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_right)) 
			{
				if(keyboard_check_direct(vk_up) && !keyboard_check_direct(vk_down))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_down) && !keyboard_check_direct(vk_up))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
					//set sprite index to running up
				}
			}
			else if(keyboard_check_direct(vk_up))
			{
				playerFacing = up;
				direction = up;
				speed = movSpeed;
			}
			else if(keyboard_check_direct(vk_down))
			{
				playerFacing = down;
				direction = down;
				speed = movSpeed;
			}
		}
		break;
		/*------------------------------------UP LEFT INPUT-----------------------------------*/
	case upLeft:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_right) && keyboard_check_direct(vk_down)) //Check if the player is moving in the opposite direction
		{
			playerFacing = downRight;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_up)) 
			{
				if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = up;
					direction = up;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_down))
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_left))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = up;
					direction = up;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_left)) 
			{
				if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = up;
					direction = up;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_down))
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_up))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_down))
			{
				if(keyboard_check_direct(vk_left))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
				}
				else
				{
					playerFacing = down;
					direction = down;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_right))
			{
				if(keyboard_check_direct(vk_up))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
				}
				else
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
				}
			}
		}
		break;
			/*------------------------------------UP RIGHT INPUT-----------------------------------*/
	case upRight:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_down)) //Check if the player is moving in the opposite direction
		{
			playerFacing = downLeft;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_up)) 
			{
				if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = up;
					direction = up;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_right) && keyboard_check_direct(vk_down))
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_right))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = up;
					direction = up;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_right)) 
			{
				if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_left))
				{ //Player is pressing 3 directions
					playerFacing = up;
					direction = up;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_down))
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_up))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_down))
			{
				if(keyboard_check_direct(vk_right))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
				}
				else
				{
					playerFacing = down;
					direction = down;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_left))
			{
				if(keyboard_check_direct(vk_up))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
				}
				else
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
				}
			}
		}
		break;
			/*------------------------------------DOWN LEFT INPUT-----------------------------------*/
	case downLeft:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_right) && keyboard_check_direct(vk_up)) //Check if the player is moving in the opposite direction
		{
			playerFacing = upRight;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_down)) 
			{
				if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = down;
					direction = down;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_up))
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_left))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = down;
					direction = down;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_left)) 
			{
				if(keyboard_check_direct(vk_down) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = down;
					direction = down;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_down))
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_down))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_up))
			{
				if(keyboard_check_direct(vk_left))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
				}
				else
				{
					playerFacing = up;
					direction = up;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_right))
			{
				if(keyboard_check_direct(vk_down))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
				}
				else
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
				}
			}
		}
		break;
			/*------------------------------------DOWN RIGHT INPUT-----------------------------------*/
	case downRight:
	//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
	//If they are, they should pivot, maintaining movement in that direction, while facing the opposite direction 
		if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_up)) //Check if the player is moving in the opposite direction
		{
			playerFacing = upLeft;
			speed = movSpeed * 1.5;
			playerState = actorStates.pivot;
			//set sprite_index to pivot sprite
			//set image_speed to whatever it needs to be
		}
		if(playerState != actorStates.pivot)
		{	
			if(keyboard_check_direct(vk_down)) 
			{
				if(keyboard_check_direct(vk_left) && keyboard_check_direct(vk_right))
				{ //Player is pressing 3 directions
					playerFacing = down;
					direction = down;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_right) && keyboard_check_direct(vk_up))
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_right))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = down;
					direction = down;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_right)) 
			{
				if(keyboard_check_direct(vk_down) && keyboard_check_direct(vk_left))
				{ //Player is pressing 3 directions
					playerFacing = down;
					direction = down;
					speed = movSpeed;
					//set sprite index to running up left
				}
				else if(keyboard_check_direct(vk_up) && keyboard_check_direct(vk_down))
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
					//set sprite index to running up right
				}
				else if(keyboard_check_direct(vk_down))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running up
				}
				else
				{
					playerFacing = right;
					direction = right;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_up))
			{
				if(keyboard_check_direct(vk_right))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
				}
				else
				{
					playerFacing = up;
					direction = up;
					speed = movSpeed;
				}
			}
			else if(keyboard_check_direct(vk_left))
			{
				if(keyboard_check_direct(vk_down))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
				}
				else
				{
					playerFacing = left;
					direction = left;
					speed = movSpeed;
				}
			}
		}
		break;
	}
}

//set sprite to stopping
if(speed = 0 && playerState == actorStates.moving) //Once the player has fully stopped, return them to neutral
{
			playerState = actorStates.neutral;
}
		
if(playerState == actorStates.pivot) //Once the player is pivoting, decrease the friction
{
	friction = 0.5
		
	if((keyboard_check_pressed(vk_up)||keyboard_check_pressed(vk_down) //Cancels pivot if 
	||keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right)) && speed < movSpeed * 1.5)//Player tries to move again
	{
		speed = 0;
	}
		
	if(speed == 0) //Once the player has fully stopped, return them to neutral
	{
		playerState = actorStates.neutral;
		direction = playerFacing;
	}
}