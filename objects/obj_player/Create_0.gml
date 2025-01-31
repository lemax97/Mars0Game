hp = 33;
spd = 10;
atk = 1;
super_attack = 0;

sprite_index = spr_player_blue;
color = COLORS.BLUE;

direction = point_direction(x, y, x, y-1);

can_shoot = true;
shoot_delay = game_get_speed(gamespeed_fps) * 0.2;