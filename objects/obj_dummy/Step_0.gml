if(alarm[0] > 0) //hitstop, freezes the actor in place
{
	image_index = 1; //Should freeze it on whatever the first hitstun frame is
	speed = 0;
}
else if (hitstun > 0) //When hit stunned
{
	state = actorStates.hitstunned;
	image_index = 2;
	hitstun--;
	if(hitstun <= 0)
	{
		state = actorStates.neutral;
		image_index = 0;
	}
}

if(state == actorStates.neutral)
{
	speed = 0;
	distance = abs(distance_to_object(obj_player));
	facing = scr_turnTowards(self,obj_player,facing);
	image_angle = facing;
	direction = facing;
	if(distance >= 20 && alarm[2] <=0)
	{
		destination = scr_movTowards(obj_player, self);
		state = actorStates.moving;
	}
}
if(state == actorStates.moving)
{
	distance = abs(point_distance(x,y, destination[0], destination[1]));
	if(distance < 20)
	{
		state = actorStates.neutral;
	}
}