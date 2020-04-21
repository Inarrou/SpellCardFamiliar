//Used to scripts when a certain signal is received
//Usually for modifying data of the owner, or to trigger special card effects
//Multiples can be assigned to one owner, to search for multiple different signals

owner = noone;
listenFor = noone; //What hook will trigger the script
listenTo = noone; //Where to look for the hook
whenHeard = noone; //Script to trigger