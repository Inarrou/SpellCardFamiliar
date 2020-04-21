///@arg statusCalled

//Reduces the effects of the attack to 0, but other on hits still apply
//Called by hit box, so any changes to player must be called using other

var statusCalled = argument0;
var tagGiven = argument1;

if(tagGiven != hooks.hurt)
return(true); //End script early if called by the wrong tag somehow

//Nullifies the hit
tempHitstun = 0;
damageMult = 0;

instance_destroy(statusCalled);
return(true);