///@arg facing
///@arg trajectory
///@arg offsetY
///@arg offsetX

//Corrects object spawn location, and trajectory, of objects that are spawned from actors depending
//on the actor's facing direction

var facing = argument0; //Direction the actor is facing
var trajectory = argument1; //Direction the object is travelling, GML defaults right to 0
//We use up as 0, so adjustments need to be made
var offsetX = argument2; //How far to the side the object is spawning
var offsetY = argument3; //How far ahead the object is spawning, assumed to be spawning above
//Game maker uses Y as downwards movement, so offsetY needs to be reversed

var totalOffset = array_create(3); //The variables returned from this function

var tempOffset0 = 0; //Used for calculations
var tempOffset1 = 0;

switch (facing) //Adds the numbers differently depending on direction
{
    case up:
        offsetY = offsetY * -1;
        break;
	case down:
		offsetX = offsetX * -1;
        break;
    case left:
        tempOffset0 = offsetY * -1;
		offsetY = offsetX * -1;
		offsetX = tempOffset0;
        break;
	case right:
        tempOffset0 = offsetY;
		offsetY = offsetX;
		offsetX = tempOffset0;
        break;
	case upRight:
        tempOffset0 = offsetY * dcos(45); //change value of offset into separate X and Y using trigonometry
		tempOffset1 = offsetX * dcos(45);
		offsetY = tempOffset0 * -1 + tempOffset1;
		offsetX = tempOffset0 + tempOffset1;
        break;
	case upLeft:
        tempOffset0 = offsetY * dcos(45);
		tempOffset1 = offsetX * dcos(45);
		offsetY = tempOffset0 * -1 + tempOffset1;
		offsetX = tempOffset0 * -1 - tempOffset1;
        break;
	case downRight:
        tempOffset0 = offsetY * dcos(45);
		tempOffset1 = offsetX * dcos(45);
		offsetY = tempOffset0 + tempOffset1;
		offsetX = tempOffset0 - tempOffset1;
        break;
	case downLeft:
        tempOffset0 = offsetY * dcos(45);
		tempOffset1 = offsetX * dcos(45);
		offsetY = tempOffset0 - tempOffset1;
		offsetX = tempOffset0 * -1 - tempOffset1;
        break;
	default:
        break;
}

totalOffset[0] = offsetX;
totalOffset[1] = offsetY;
totalOffset[2] = (trajectory + facing - 90) % 360; //Corrects trajectory of projectile
return totalOffset;