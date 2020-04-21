///@arg hookToFind
///@arg whereToLook
//Takes a hook and then searches a list of effects to find it, then executes the script associated with it

var hookToFind = argument0;
var whereToLook = argument1;

var proceed = true;

if(ds_exists(whereToLook, ds_type_list) == true)//make sure the list exists
{
	for(var i = 0; i < ds_list_size(whereToLook); i++)
	{
		if(ds_list_find_value(whereToLook,i) == hookToFind)
		{
			script_execute(whenHeard);
			//executes the script of any matching hook
			if(proceed == false) //if that script cancels the rest of the effects, sets proceed to false
				return(proceed);
		}
	}
}
return(proceed);