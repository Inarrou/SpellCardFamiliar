///@arg objToTurn
///@arg objToFace
///@arg currentFacing

var objToTurn = argument0;
var objToFace = argument1;
var currentFacing = argument2; //current facing angle of objToTurn

//Used to determine whether or not a turn is required
var angleBetween = point_direction(objToTurn.x, objToTurn.y, objToFace.x, objToFace.y);
var angleDifference = angle_difference(currentFacing, angleBetween);

if(abs(angleDifference) > 45)
{
	if(angleBetween <= 22.5 || angleBetween > 337.5)
	{
		return(right);
	}
	if(angleBetween > 22.5 && angleBetween <= 67.5)
	{
		return(upRight);
	}
	if(angleBetween > 67.5 && angleBetween <= 112.5)
	{
		return(up);
	}
	if(angleBetween > 112.5 && angleBetween <= 157.5)
	{
		return(upLeft);
	}
	if(angleBetween > 157.5 && angleBetween <= 202.5)
	{
		return(left);
	}
	if(angleBetween > 202.5 && angleBetween <= 247.5)
	{
		return(downLeft);
	}
	if(angleBetween > 247.5 && angleBetween <= 292.5)
	{
		return(down);
	}
	if(angleBetween > 292.5 && angleBetween <= 337.5)
	{
		return(downRight);
	}
}
else
{
	return(currentFacing);	
}