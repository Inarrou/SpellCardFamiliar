/// Initialize everything

hand = ds_list_create(); //The actual card data is stored here

for(var i = 0; i<handMax; i++)
{
	ds_list_add(hand,0);
}