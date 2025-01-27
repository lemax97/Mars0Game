var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

if global.game_state == STATES.PLAYING
{
	if x > _cam_x and x < _cam_x + _cam_w 
		and y > _cam_y and y < _cam_y + _cam_h
	{
		var _bullet = instance_create_layer(x, y, "Instances",
			obj_bullet_enemy);
		_bullet.atk = atk;
		_bullet.direction = direction;
		_bullet.color = color;
		switch color
		{
			case COLORS.RED:
				_bullet.sprite_index = spr_bullet_red;
				break;
			case COLORS.BLUE:
				_bullet.sprite_index = spr_bullet_blue;
				break;
			default:
				_bullet.sprite_index = spr_bullet;
				break;
		}
	}
}
alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);