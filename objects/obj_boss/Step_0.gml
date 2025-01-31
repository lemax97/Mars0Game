// Inherit the parent event
event_inherited();

if (instance_exists(obj_player))
{
	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	direction = _dir;
	
	if (hp < maxhp / 2 and phase == 0)
	{
		phase = 1;
		alarm[1] = game_get_speed(gamespeed_fps) * 0.1;
	}
}