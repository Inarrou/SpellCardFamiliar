/// @description Destroys if owner is taken out of active frames

if(owner.playerState != actorStates.casting)
instance_destroy(self);