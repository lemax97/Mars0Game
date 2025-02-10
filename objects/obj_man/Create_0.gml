hp = 1;
spd = 1;
hsp = 0;

chaotic_run_speed = game_get_speed(gamespeed_fps) * 5;

cam = view_camera[0];

randomize();

direction = floor(random_range(0,5));

alarm[0] = chaotic_run_speed;