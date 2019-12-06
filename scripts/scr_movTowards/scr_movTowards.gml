///@arg objToApproach
///@arg objToMove

var objToApproach = argument0;
var objToMove = argument1;

var destination = [objToApproach.x, objToApproach.y];
objToMove.speed = movSpeed;
objToMove.alarm[2] = 120; //Used for locking AI into an action

return(destination);