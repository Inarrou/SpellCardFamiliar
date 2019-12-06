/// @description Hits a creature
if(other.id != owner) //Makes sure the hitbox won't hit its owner
{
	if(ds_list_find_index(hasBeenHit,other.id) == -1) //Checks if the target has been hit yet
	{
		ds_list_add(hasBeenHit, other.id);
		other.alarm[0] = hitstop;
		other.hitstun = hitstun;
		
		if(onHitEffect != noone) //Apply on hit effect if applicable
		{
			script_execute(onHitEffect);
		}
		
		alarm[0] = hitstop;
	}
}

if(alarm[0] > 0)
{
	alarm[1]++; //Increases the lifespan of the hitbox so it doesn't end earlier in the animation
	if(tempSpeed == 0) //Saves the speed value
	{
		tempSpeed = speed;	
	}
	speed = 0;
	image_speed = 0;
}