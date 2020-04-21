if(instance_exists(toFollow))
{
	switch(mode)
	{
		case camMode.normal:
		x = lerp(x,toFollow.x,0.2);
		y = lerp(y,toFollow.y,0.2);
		break;
		case camMode.overshoot:
		var totalOffset = scr_directionFixer(toFollow.facing, up, 0, offset)
		x = lerp(x, toFollow.x + totalOffset[0], 0.2);
		y = lerp(y,toFollow.y + totalOffset[1],0.2);
		break;
		case camMode.undershoot:
		var totalOffset = scr_directionFixer(toFollow.facing, down, 0, offset)
		x = lerp(x,toFollow.x + totalOffset[0], 0.2);
		y = lerp(y,toFollow.y + totalOffset[1],0.2);
		break;
		case camMode.shake:
		x = lerp(x,x + irandom_range(-shake,shake), 0.5)
		default:
		break;
	}

	var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
	camera_set_view_mat(thisCam, vm);

}
else
{
	if(instance_exists(obj_player))
	toFollow = obj_player;	
}