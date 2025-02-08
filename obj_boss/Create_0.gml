// Inherit the parent event
event_inherited();

maxhp = 10;
hp = maxhp;
str = 1;
atk_delay = 2;

phase = 0;

alarm[0] = game_get_speed(gamespeed_fps) * atk_delay;