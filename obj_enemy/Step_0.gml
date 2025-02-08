if (hp <= 0)
{
	instance_destroy(id, true);
	
}

if global.game_state == STATES.PLAYING
{
	speed = spd;
	path_speed = spd;
	
}
else 
{
	speed = 0;
	path_speed = 0;
}

