/// @description After room transition
display_set_gui_size(view_wport[0], view_hport[0]);
instance_create_layer(0,0, "GUI", obj_hand);
instance_deactivate_object(self);
alarm[0] = -1;

for(var i = 1; i <= global.decksActive; i++)
{
	scr_createDeck(subDeck[i]);
}

instance_create_layer(obj_player.x, obj_player.y, "GUI", obj_camera);