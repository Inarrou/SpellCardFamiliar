if(alarm[0] > 0)
{
	image_index = 1;
	speed = 0;
}
else if (hitstun > 0)
{
	state = actorStates.hitstunned;
	image_index = 2;
	hitstun--;
}
else
{
	state = actorStates.neutral;
	image_index = 0;
}