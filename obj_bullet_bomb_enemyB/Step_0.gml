if global.game_state == STATES.PLAYING
{
	var _angle =random_range(1,2);
	if (_angle >= 1.5) image_angle++;
	else image_angle--;
	speed = spd;
	if (y>=768)
	{
		instance_destroy(id, true);
	}
}
else
{
	speed = 0;
}