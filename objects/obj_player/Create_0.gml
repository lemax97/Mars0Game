hp = 3;
spd = 10;
atk = 1;

direction = point_direction(x, y, x, y-1);

can_shoot = true;
shoot_delay = game_get_speed(gamespeed_fps) * 0.2;