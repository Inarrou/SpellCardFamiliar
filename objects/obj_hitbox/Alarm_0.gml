/// @description hitstop
//After hitstop expires, sets values to previous amounts and resets tempSpeed for later use
if(speed = 0)
{
	speed = tempSpeed;
	image_speed = 1;
	tempSpeed = 0;
}