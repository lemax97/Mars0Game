
if (sprite_width < 120 * 3 and sprite_width >= 120)
{
	if (global.game_state == STATES.PLAYING)
	{
		image_xscale += 0.1;
		image_yscale += 0.1;
	}
	alarm[1] = game_get_speed(gamespeed_fps) * 0.1;
}
else
{
	atk_delay = 1;
	alarm[2] = game_get_speed(gamespeed_fps) * 2;
}