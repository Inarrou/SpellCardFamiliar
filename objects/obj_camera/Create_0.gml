/// @description Controls camera movement
//normal = follows object exactly
//overshoot = follows ahead of object
//undershoot = follows behind object
//fixed = doesn't move
mode = camMode.normal;

//Used for following objects other than the player
toFollow = noone;

//Used to place the camera slightly off from the player
offset = 0;

thisCam = camera_create();
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(1024,768,1,10000);

camera_set_view_mat(thisCam, vm);
camera_set_proj_mat(thisCam, pm);

view_camera[0] = thisCam;