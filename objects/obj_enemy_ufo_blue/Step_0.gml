event_inherited();

if instance_exists(obj_player)
{
	var _dir = point_direction(x, y, obj_player.x, obj_player.y);
	direction = _dir;
	image_angle = _dir;
	speed = 0;
}