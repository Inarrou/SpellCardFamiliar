/// @description After room transition
for(var i = 1; i <= global.decksActive; i++)
	{
		scr_createDeck(subDeck[i]);
	}

display_set_gui_maximize();
instance_create_layer(0,0, "GUI", obj_hand);
instance_deactivate_object(self);
alarm[0] = -1;