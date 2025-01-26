if x > camera_get_view_x(view_camera[0]) + sprite_width / 2 
	and global.game_state == STATES.PLAYING
{
	x -= spd;
}