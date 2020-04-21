//Used for simple statuses that tick or act at the end of duration
owner = noone;

tickRate = 1; //How often it triggers in frames
trigger = noone; //Any special case that causes it to trigger again
listenTo = noone; //Where to check to the trigger
pullTags[0] = noone; //Which tags can call the pull effect

tickEffect = noone; //What happens every tick
endEffect = noone; //What happens when it ends
triggerEffect = noone; //What happens under special circumstances
pullEffect = noone; //Used when something directly interacts with this status
expireEffect = noone; //Used only when the status expires naturally