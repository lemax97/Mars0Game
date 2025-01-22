hp = 1;
atk = 1;
spd = 1;

dir = 1;
start_x = x - sprite_width / 2;
end_x = x + sprite_width / 2;

move_down_speed = game_get_speed(gamespeed_fps) * 5;
alarm[0] = move_down_speed;