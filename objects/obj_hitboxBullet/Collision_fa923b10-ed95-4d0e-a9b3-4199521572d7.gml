/// @description hits projectile

if(hitsBullets == true)
{
	if(other.owner != owner)
	{ //Subtracts bullet HPs from each other, and destroys itself if it has no hp left
		var tempHP = bulletHP;
		bulletHP -= other.bulletHP;
		other.bulletHP -= tempHP;
		
		if(bulletHP <= 0)
			instance_destroy(self);
		else
			instance_destroy(other);
	}
}