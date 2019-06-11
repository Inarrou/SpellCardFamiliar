/// @description Loads every card
var cardFile = file_text_open_read(working_directory + "CardData.json");
var fileData = "";
while(!file_text_eof(cardFile)) //Saves text to a var
{
	fileData += file_text_read_string(cardFile);
	file_text_readln(cardFile);
}
file_text_close(cardFile);

var jsonMap = json_decode(fileData); //Creates a map with it
var entryList = jsonMap[? "default"]; //List of the maps
var numCards = ds_list_size(entryList);
global.cardLibrary = ds_grid_create(numCards, 12);

for(var i = 0; i<numCards; i++) //Copy all data into a column in the grid
{
	var cardMap = entryList[| i];
	global.cardLibrary[# i, cardData.ID] = cardMap[? "ID"];
	global.cardLibrary[# i, cardData.NAME] = cardMap[? "NAME"];
	global.cardLibrary[# i, cardData.RARITY] = cardMap[? "RARITY"];
	global.cardLibrary[# i, cardData.TYPE] = cardMap[? "TYPE"];
	global.cardLibrary[# i, cardData.ELEMENT] = cardMap[? "ELEMENT"];
	global.cardLibrary[# i, cardData.COLOUR] = cardMap[? "COLOUR"];
	global.cardLibrary[# i, cardData.POWER] = cardMap[? "POWER"];
	//Convert string of script name into the actual script asset
	global.cardLibrary[# i, cardData.SCRIPT] = asset_get_index(cardMap[? "SCRIPT"]);
	//Copy tags list from map into grid
	global.cardLibrary[# i, cardData.TAGS] = ds_list_create();
	ds_list_copy(global.cardLibrary[# i, cardData.TAGS], cardMap[? "TAGS"]);
	
	global.cardLibrary[# i, cardData.DESCRIPTION] = cardMap[? "DESCRIPTION"];
	global.cardLibrary[# i, cardData.SPRITE] = cardMap[? "SPRITE"];
	global.cardLibrary[# i, cardData.FLAVOUR] = cardMap[? "FLAVOUR"];
	
	ds_map_destroy(cardMap);
}
//Clean up unneeded DS's
ds_map_destroy(jsonMap);
ds_list_destroy(entryList);