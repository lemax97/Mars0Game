if super_attack >= 100
{
	var _cam = view_camera[0];
	var _cam_x = camera_get_view_x(_cam);
	var _cam_y = camera_get_view_y(_cam);
	var _cam_w = camera_get_view_width(_cam);
	var _cam_h = camera_get_view_height(_cam);
	with obj_enemy
	{
		if point_in_rectangle(x, y, _cam_x, _cam_y, _cam_x + _cam_w, _cam_y + _cam_h)
		{
			instance_destroy();
		}
	}
	
	super_attack = 0;
}