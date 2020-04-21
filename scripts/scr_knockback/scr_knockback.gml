if(tempKnockback <= 0)//Everytime knockback counter hits 0, reset it and reduce speed
{
	tempKnockback = knockback;
	speed = speed * 0.5;
}
else
{
	tempKnockback -= weight;
}
if(speed < 1) //End knockback once speed is low enough
knockback = 0;