///@arg list
///@arg value

//Finds how many instances of a value occur within a given list

var list = argument0;
var value = argument1;

var amount = 0;

if(ds_list_find_index(list, value) == -1) 
return 0;

for(var i = 0; i < ds_list_size(list); i++)
{
	if(ds_list_find_value(list,i) == value)	
	amount++;
}

return amount;