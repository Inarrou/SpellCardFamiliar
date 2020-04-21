///@arg tagGiven
///@arg whereToGive
//Gives a tag to an object, and if it has a response for that tag, executes it

var tagGiven = argument0; //What's passed to the status
var whereToGive = argument1; //Which object to give it to

var proceed = true; //Whether further statuses should be checked

if(ds_exists(whereToGive, ds_type_list) == true && ds_list_empty(whereToGive != true))
{ //Make sure a non empty list exists
	for(var i = 0; i < ds_list_size(whereToGive); i++)
	{
		//Finds a status, then sees if it has the tag. If it does, execute the pullEffect with tagGiven
		var receiver = ds_list_find_value(whereToGive,i);
		if(receiver.pullEffect != noone) //Makes sure the receiver can activate
		{
			for(var i = 0; i < array_length_1d(receiver.pullTags); i++)
			{
				if(receiver.pullTags[i] == tagGiven)
				{
					//Gives the status, the ID of the exact status being executed, and the tag used to call it
					script_execute(receiver.pullEffect,receiver,tagGiven);
					if(proceed == false) //if its pullEffect cuts off other statuses, proceed will be false
					return(proceed);
					else
					break; //Otherwise move on to next status
				}
			}
		}
	}
}
return(proceed);