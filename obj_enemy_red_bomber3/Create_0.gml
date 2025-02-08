event_inherited();

color = COLORS.RED;
spd = 3;

direction = 270;

alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);

path_start(pth_room0Left, spd, path_action_restart, false);