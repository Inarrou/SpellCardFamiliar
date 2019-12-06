/// @description hits projectile

if(hitsBullets == true)
{
	if(other.owner != owner)
	instance_destroy(other);
}