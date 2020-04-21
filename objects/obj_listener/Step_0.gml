if(instance_exists(owner) == true)
{
	if(owner.listening == true)
	{
		scr_ListenFor(listenFor,listenTo);
	}
	else
	instance_destroy(self);
}
else
instance_destroy(self);