//Shuffles a single deck of choice

var deckToShuffle = argument0; //Gets the deck that needs to be shuffled.

ds_list_copy(deckToShuffle.deck,deckToShuffle.discard); //Moves all cards in discard to the active deck
ds_list_shuffle(deckToShuffle.deck); //Shuffles them
deckToShuffle.currentCards = ds_list_size(deckToShuffle.deck); //Makes sure the # of cards matches the new size
ds_list_clear(deckToShuffle.discard); //Empties discard