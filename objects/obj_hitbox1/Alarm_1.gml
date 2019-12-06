/// @description lifespan
if(onEndEffect != noone)
script_execute(onEndEffect);

instance_destroy(self);