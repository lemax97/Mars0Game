var _bullet = instance_create_layer(x, y, "Instances", obj_bullet_enemy);
_bullet.atk = atk;
_bullet.direction = point_direction(x, y, x, y + 1);
_bullet.speed = _bullet.spd;

alarm[1] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);