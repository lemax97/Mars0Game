enum STATES {
	PLAYING,
	PAUSED,
	VICTORY,
	GAMEOVER
};

enum COLORS {
NONE,
RED,
BLUE
};

x_dimension = 1024;//Screen size
y_dimension = 768;

randomize();

global.game_state = STATES.PLAYING;
if (room == rm_level_0)
{
	alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);
}
else audio_play_sound(snd_game_music, 1, false);

game_set_speed(60, gamespeed_fps);

options = ["RESUME", "RESTART", "QUIT"];
opt_number = array_length(options);
menu_min = 0;
menu_index = 0;


