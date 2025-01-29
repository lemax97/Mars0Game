if global.game_state == STATES.PLAYING
{
	if instance_exists(obj_player)
	{
		var _cam_x = camera_get_view_x(cam);
		var _cam_y = camera_get_view_y(cam);
		var _cam_w = camera_get_view_width(cam);
		var _cam_h = camera_get_view_height(cam);
		
		if _cam_y <= 0
		{
			spd = 0;
		}
		speed = spd;
		obj_player.speed = spd;
		
		if obj_player.x - obj_player.sprite_width / 2 <= _cam_x
		{
			obj_player.x = _cam_x + obj_player.sprite_width / 2;
		}
		
		if obj_player.x + obj_player.sprite_width / 2 >= _cam_x + _cam_w
		{
			obj_player.x = _cam_x + _cam_w - obj_player.sprite_width / 2;
		}
		
		if obj_player.y + obj_player.sprite_height / 2 >= _cam_y + _cam_h
		{
			obj_player.y = _cam_y + _cam_h  - obj_player.sprite_height / 2;
		}
		
		if obj_player.y - obj_player.sprite_height / 2 <= _cam_y
		{
			obj_player.y = _cam_y + obj_player.sprite_height / 2;
		}
	}
}
else
{
	speed = 0;
	if instance_exists(obj_player)
	{
		obj_player.speed = 0;
	}
}