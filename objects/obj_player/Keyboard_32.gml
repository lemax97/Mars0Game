if (can_shoot and global.game_state == STATES.PLAYING)
{
	can_shoot = false;
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	_bullet.atk = atk;
	_bullet.direction = point_direction(x, y, x, y - 1);
	
	alarm[0] = shoot_delay;
}