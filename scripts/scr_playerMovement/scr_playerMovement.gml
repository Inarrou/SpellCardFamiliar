if(playerState == actorStates.neutral)
{
	if(keyboard_check(vk_up))
	{
		playerFacing = up;
		direction = up;
		vspeed = -movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check(vk_down))
	{
		playerFacing = down;
		direction = down;
		vspeed = movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check(vk_left))
	{
		playerFacing = left;
		direction = left;
		hspeed = -movSpeed;
		playerState = actorStates.moving;
	}
		
	if(keyboard_check(vk_right))
	{
		playerFacing = right;
		direction = right;
		hspeed = movSpeed;
		playerState = actorStates.moving;
	}
}
else if (playerState == actorStates.moving)
{
	switch(keyboard_key)
	{
		/*--------------------------UP INPUT-------------------------*/
		case vk_up:
		//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
		//If they are, they should pivot, maintaining movement in that direction, then 
			if(playerFacing == down) //Check if the player is moving in the opposite direction
			{
				playerFacing = up;
				speed = movSpeed * 1.5;
				playerState = actorStates.pivot;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == downLeft)
			{
				playerState = actorStates.pivot;
				playerFacing = upRight;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == downRight)
			{
				playerState = actorStates.pivot;
				playerFacing = upLeft;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			if(playerState != actorStates.pivot)
			{
				if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
				{
					playerFacing = up;
					direction = up;
					vspeed = -movSpeed;
					//set sprite index to running up
				}
			
				if(keyboard_check(vk_left))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up left
				}
			
				if(keyboard_check(vk_right))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up right
				}
			}
			break;
	/*-------------------------------DOWN INPUT-----------------------------*/
		case vk_down:
			if(playerFacing == up) //Check if the player is moving in the opposite direction
			{
				playerState = actorStates.pivot;
				playerFacing = down;
				direction = up
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == upLeft)
			{
				playerState = actorStates.pivot;
				playerFacing = downRight;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == upRight)
			{
				playerState = actorStates.pivot;
				playerFacing = downLeft;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			if(playerState != actorStates.pivot)
			{
				if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
				{
					playerFacing = down;
					direction = down;
					vspeed = movSpeed;
					//set sprite index to running up
				}
			
				if(keyboard_check(vk_left))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running up left
				}
			
				if(keyboard_check(vk_right))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running up right
				}
			}
			break;
		/*----------------------------------LEFT INPUT--------------------------*/
		case vk_left:
			if(playerFacing == right) //Check if the player is moving in the opposite direction
			{
				playerState = actorStates.pivot;
				playerFacing = left;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == downRight)
			{
				playerState = actorStates.pivot;
				playerFacing = upLeft;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == upRight)
			{
				playerState = actorStates.pivot;
				playerFacing = downLeft;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			if(playerState != actorStates.pivot)
			{
				if(!keyboard_check(vk_up) && !keyboard_check(vk_down))
				{
					playerFacing = left;
					direction = left;
					hspeed = -movSpeed;
					//set sprite index to running up
				}
			
				if(keyboard_check(vk_down))
				{
					playerFacing = downLeft;
					direction = downLeft;
					speed = movSpeed;
					//set sprite index to running up left
				}
			
				if(keyboard_check(vk_up))
				{
					playerFacing = upLeft;
					direction = upLeft;
					speed = movSpeed;
					//set sprite index to running up right
				}
			}
			break;
			/*------------------------------------RIGHT INPUT-----------------------------------*/
		case vk_right:
			if(playerFacing == left) //Check if the player is moving in the opposite direction
			{
				playerState = actorStates.pivot;
				playerFacing = right;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == upLeft)
			{
				playerState = actorStates.pivot;
				playerFacing = downRight;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			
			if(playerFacing == downLeft)
			{
				playerState = actorStates.pivot;
				playerFacing = upRight;
				speed = movSpeed * 1.5;
				//set sprite_index to pivot sprite
				//set image_speed to whatever it needs to be
			}
			if(playerState != actorStates.pivot)
			{
				if(!keyboard_check(vk_up) && !keyboard_check(vk_down))
				{
					playerFacing = right;
					direction = right;
					hspeed = movSpeed;
					//set sprite index to running up
				}
			
				if(keyboard_check(vk_down))
				{
					playerFacing = downRight;
					direction = downRight;
					speed = movSpeed;
					//set sprite index to running up left
				}
			
				if(keyboard_check(vk_up))
				{
					playerFacing = upRight;
					direction = upRight;
					speed = movSpeed;
					//set sprite index to running up right
				}
			}
			break;
		default: //If the player isn't pressing a movement related key
		//set sprite to stopping
		if(speed = 0) //Once the player has fully stopped, return them to neutral
		{
			playerState = actorStates.neutral;
		}
		break;
	}
	if(speed = 0) //Once the player has fully stopped, return them to neutral
		{
			playerState = actorStates.neutral;
		}
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
	}
}
else
{
	friction = 0.5 //In regular cases, their friction will be normal
}