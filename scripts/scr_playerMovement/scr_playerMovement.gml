if(global.playerState == playerStates.neutral)
	{
		if(keyboard_check(vk_up))
		{
			global.playerFacing = up;
			direction = up;
			vspeed = -movSpeed;
			global.playerState = playerStates.moving;
		}
		
		if(keyboard_check(vk_down))
		{
			global.playerFacing = down;
			direction = down;
			vspeed = movSpeed;
			global.playerState = playerStates.moving;
		}
		
		if(keyboard_check(vk_left))
		{
			global.playerFacing = left;
			direction = left;
			hspeed = -movSpeed;
			global.playerState = playerStates.moving;
		}
		
		if(keyboard_check(vk_right))
		{
			global.playerFacing = right;
			direction = right;
			hspeed = movSpeed;
			global.playerState = playerStates.moving;
		}
	}
	else if (global.playerState == playerStates.moving)
	{
		switch(keyboard_key)
		{
			/*--------------------------UP INPUT-------------------------*/
			case vk_up:
			//When a key is pressed while the player is moving, the game should check if they are moving in the opposite direction
			//If they are, they should pivot, maintaining movement in that direction, then 
				if(global.playerFacing == down) //Check if the player is moving in the opposite direction
				{
					global.playerFacing = up;
					speed = movSpeed * 1.5;
					global.playerState = playerStates.pivot;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == downLeft)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = upRight;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == downRight)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = upLeft;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
				if(global.playerState != playerStates.pivot)
				{
					if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
					{
						global.playerFacing = up;
						direction = up;
						vspeed = -movSpeed;
						//set sprite index to running up
					}
			
					if(keyboard_check(vk_left))
					{
						global.playerFacing = upLeft;
						direction = upLeft;
						speed = movSpeed;
						//set sprite index to running up left
					}
			
					if(keyboard_check(vk_right))
					{
						global.playerFacing = upRight;
						direction = upRight;
						speed = movSpeed;
						//set sprite index to running up right
					}
				}
				break;
		/*-------------------------------DOWN INPUT-----------------------------*/
			case vk_down:
				if(global.playerFacing == up) //Check if the player is moving in the opposite direction
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = down;
					direction = up
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == upLeft)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = downRight;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == upRight)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = downLeft;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
				if(global.playerState != playerStates.pivot)
				{
					if(!keyboard_check(vk_left) && !keyboard_check(vk_right))
					{
						global.playerFacing = down;
						direction = down;
						vspeed = movSpeed;
						//set sprite index to running up
					}
			
					if(keyboard_check(vk_left))
					{
						global.playerFacing = downLeft;
						direction = downLeft;
						speed = movSpeed;
						//set sprite index to running up left
					}
			
					if(keyboard_check(vk_right))
					{
						global.playerFacing = downRight;
						direction = downRight;
						speed = movSpeed;
						//set sprite index to running up right
					}
				}
				break;
			/*----------------------------------LEFT INPUT--------------------------*/
			case vk_left:
				if(global.playerFacing == right) //Check if the player is moving in the opposite direction
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = left;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == downRight)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = upLeft;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == upRight)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = downLeft;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
				if(global.playerState != playerStates.pivot)
				{
					if(!keyboard_check(vk_up) && !keyboard_check(vk_down))
					{
						global.playerFacing = left;
						direction = left;
						hspeed = -movSpeed;
						//set sprite index to running up
					}
			
					if(keyboard_check(vk_down))
					{
						global.playerFacing = downLeft;
						direction = downLeft;
						speed = movSpeed;
						//set sprite index to running up left
					}
			
					if(keyboard_check(vk_up))
					{
						global.playerFacing = upLeft;
						direction = upLeft;
						speed = movSpeed;
						//set sprite index to running up right
					}
				}
				break;
				/*------------------------------------RIGHT INPUT-----------------------------------*/
			case vk_right:
				if(global.playerFacing == left) //Check if the player is moving in the opposite direction
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = right;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == upLeft)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = downRight;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
			
				if(global.playerFacing == downLeft)
				{
					global.playerState = playerStates.pivot;
					global.playerFacing = upRight;
					speed = movSpeed * 1.5;
					//set sprite_index to pivot sprite
					//set image_speed to whatever it needs to be
				}
				if(global.playerState != playerStates.pivot)
				{
					if(!keyboard_check(vk_up) && !keyboard_check(vk_down))
					{
						global.playerFacing = right;
						direction = right;
						hspeed = movSpeed;
						//set sprite index to running up
					}
			
					if(keyboard_check(vk_down))
					{
						global.playerFacing = downRight;
						direction = downRight;
						speed = movSpeed;
						//set sprite index to running up left
					}
			
					if(keyboard_check(vk_up))
					{
						global.playerFacing = upRight;
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
				global.playerState = playerStates.neutral;
			}
			break;
		}
		if(speed = 0) //Once the player has fully stopped, return them to neutral
			{
				global.playerState = playerStates.neutral;
			}
	}
	if(global.playerState == playerStates.pivot) //Once the player is pivoting, decrease the friction
	{
		friction = 0.15
		
		if(speed < movSpeed/2) //Once the player has fully stopped, return them to neutral
		{
			global.playerState = playerStates.neutral;
		}
	}
	else
	{
		friction = 0.5 //In regular cases, their friction will be normal
	}