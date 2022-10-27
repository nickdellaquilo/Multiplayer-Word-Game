view_enabled = true;
view_visible[0] = true;
view_visible[1] = false;
view_visible[2] = false;

cam_width  = window_get_width()
cam_height = window_get_height()

//full screen
view_set_xport(0, 0)
view_set_yport(0, 0)
view_set_wport(0, cam_width)
view_set_hport(0, cam_height)

//p1 camera
view_set_xport(1, 0)
view_set_yport(1, 0)
view_set_wport(1, cam_width/2)
view_set_hport(1, cam_height)

//p2 camera
view_set_xport(2, 0)
view_set_yport(2, 0)
view_set_wport(2, cam_width/2)
view_set_hport(2, cam_height)

CAMERA_COMBINED = camera_create_view(0,0,cam_width, cam_height)
view_set_camera(0, CAMERA_COMBINED)

CAMERA_P1 = camera_create_view(0,0, cam_width/2, cam_height);
view_set_camera(1, CAMERA_P1);
 
CAMERA_P2 = camera_create_view(0,0,cam_width/2, cam_height);
view_set_camera(2, CAMERA_P2);