var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);
var _cam_w = camera_get_view_width(_cam);
var _cam_h = camera_get_view_height(_cam);

if room == rm_level_1 and global.game_state == STATES.PLAYING
{
	y += 50;
}
alarm[0] = move_down_speed;