var spacing = 12;

draw_text(64, 64, "Cursor = " + string(cursorPos));
draw_text(64, 64 + spacing, "Deck Selected = " + string(deckSelected));


for(var i = 0; i < 5; i++)
{
	draw_text(64, 64 + spacing * (i + 2), "Card " + string(i) + " Amount: " + string(ds_map_find_value(cardsOwned,string(i))));
}

draw_text(0,200,"Deck 1: ")
for(var i = 0; i < ds_list_size(subDeck[1]); i++)
{
	draw_text(i*12 + 70, 200, string(ds_list_find_value(subDeck[1],i)));
}

draw_text(0,300,"Deck 2: ")
for(var i = 0; i < ds_list_size(subDeck[2]); i++)
{
	draw_text(i*12 + 70, 300, string(ds_list_find_value(subDeck[2],i)));
}

draw_text(0,400,"Deck 3: ")
for(var i = 0; i < ds_list_size(subDeck[3]); i++)
{
	draw_text(i*12 + 70, 400, string(ds_list_find_value(subDeck[3],i)));
}

draw_text(0,500,"Deck 4: ")
for(var i = 0; i < ds_list_size(subDeck[4]); i++)
{
	draw_text(i*12 + 70, 500, string(ds_list_find_value(subDeck[4],i)));
}