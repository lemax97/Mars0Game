if can_shoot
{
	can_shoot = false;
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	_bullet.atk = atk;
	_bullet.direction = point_direction(x, y, x, y - 1);
	_bullet.speed = _bullet.spd;
	
	alarm[0] = shoot_delay;
}