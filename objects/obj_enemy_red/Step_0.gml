if global.game_state == STATES.PLAYING
{
	if (x <= start_x or x >= end_x)
	{
		dir *= -1;
	}
	
	x += spd * dir;
}


if hp <= 0
{
	instance_destroy(id, true);
}