if (global.game_state == STATES.PLAYING)
{
	var _cam = view_camera[0];
	var _cam_x = camera_get_view_x(_cam);
	var _cam_y = camera_get_view_y(_cam);
	var _cam_w = camera_get_view_width(_cam);
	var _cam_h = camera_get_view_height(_cam);
	
	var _minion_x = random_range(_cam_x, _cam_x + _cam_w);
	var _minion_y = random_range(_cam_y, _cam_y + _cam_h);
	var _choose_minion = random_range(1, 9);
	var _obj = obj_enemy_ufo_red;
	if (_choose_minion>=5)
	{
	  _obj = obj_enemy_ufo_blue;
	}
	instance_create_layer(_minion_x, _minion_y, "Instances", _obj);
}