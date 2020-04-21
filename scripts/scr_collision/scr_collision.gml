if(place_meeting(x, y, obj_solids) && speed == 0)
{//When the object gets stuck, move it away from what its stuck into
	var stuckOn = instance_place(x, y, obj_solids);
	if(instance_place(x, y, obj_wall) != noone) //Special rule for dealing with walls
	{
		direction = stuckOn.direction; //walls push the player out in a specific direction
	}
	else
	{// Otherwise, use the angle between objects to push them out of each other
		direction = (point_direction(x, y, stuckOn.x, stuckOn.y) + 180) % 360;
		speed = 1;
	}

	x += sign(hspeed);
	y += sign(vspeed);
}

if(place_meeting(x+hspeed, y, obj_solids)) //Checks horizontal collision
{
	for(var i = 0; i < hspeed; i++) //moves 1 pixel ahead until collision happens
	{
		if(!place_meeting(x + sign(hspeed), y, obj_solids))
		x += sign(hspeed);	
		else
		break; //When object would collide, exit loop early
	}
	hspeed = 0; //Stops movement
}

if(place_meeting(x, y + vspeed, obj_solids)) //Checks vertical collision
{
	for(var i = 0; i < vspeed; i++)
	{
		if(!place_meeting(x, y + sign(vspeed), obj_solids))
		y += sign(vspeed);
		else
		break;
	}
	vspeed = 0;
}
