/// @description Hits a creature
if(other.id != owner) //Makes sure the hitbox won't hit its owner
{
	if(scr_giveTag(hooks.prehurt, other.statusBar) == true) //Check for negations from the enemy
	{
		if(ds_list_find_index(hasBeenHit,other.id) == -1) //Checks if the target has been hit yet
		{
			ds_list_add(hasBeenHit, other.id);
			if(scr_giveTag(hooks.prehit, owner.statusBar) == true) //See if owner can hit
			{
				//Freezes both the target and the hitbox
				other.alarm[0] = hitstop;
				
				alarm[0] = hitstop;
				tempSpeed = speed;
				speed = 0;
				image_speed = 0;
				
				//Begin damage calculation
				damageMult = 1;
				damageAdd = 0;	
				tempHitstun = hitstun;
				//Modifies the damage/hitstun via on hits for both parties
				scr_giveTag(hooks.hit, owner.statusBar);
				scr_giveTag(hooks.hurt, other.statusBar);
				
				if(tempHitstun > 0)
				{
					other.hitstun = tempHitstun;
					other.knockback = knockbackDecay; //How quickly the knockback decays, bigger = slower
					other.speed = knockbackStrength; //The actual speed at which they fly backwards
					other.facing = scr_turnTowards(other, id, other.facing);
					other.direction = (facing + 180) mod 360;	
				}
				
				//Makes sure ele res doesn't cause a negative number
				var effectiveRes = other.eleRes[eleType]
				if(effectiveRes > 100)
				effectiveRes = 100;
				//Moves into final step of damage
				if(damageMult == 0 || effectiveRes = 100) //Special case, anytime damage is negated, don't bother with further calculations
				tempDamage = 1;
				else
				tempDamage = floor((damage * damageMult + damageAdd) * power(0.97,other.defence)) * (1-effectiveRes);
				if(tempDamage < 1)
				tempDamage = 1;
				//Show damage number
				var damageNum = instance_create_layer(other.x, other.y,"GUI",obj_damageNumPlayer);
				damageNum.damageAmount = tempDamage;
				other.HP -= tempDamage;
				
				for(var i = 0; i < array_length_1d(onHitEffect); i++)
				{
						if(onHitEffect[i] != noone) //Apply on hit effect if applicable
						script_execute(onHitEffect[i]);	
				}
			}
		}
	}
}