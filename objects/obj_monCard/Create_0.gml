owner = noone; //ID of monster that owns this card

playability = false; //Whether the AI can currently activate this card
basePriority = 10
playPriority = basePriority; //How much the AI will prefer to play this card, lower = more likely
//Preferred distances to be played at, affects playability and/or priority
minPlayRange = 0;
maxPlayRange = 0;

cyclesInHand = 0; //Increases per every card drawn by owner, helps old cards get played. Increases priority

playCard = noone; //Runs when card is played
cardPrio = noone; //Special rulings that determine card's priority