event_inherited();

color = COLORS.RED;


dir = 1;
start_x = x - sprite_width / 2;
end_x = x + sprite_width / 2;

//move_down_speed = game_get_speed(gamespeed_fps) * 5;

alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);
//alarm[1] = move_down_speed;

path_start(pth_pathWR, spd, path_action_restart, false);