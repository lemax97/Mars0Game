enum STATES {
	PLAYING,
	PAUSED,
	GAMEOVER
};

enum COLORS {
NONE,
RED,
BLUE
};



randomize();

global.game_state = STATES.PLAYING;

audio_play_sound(snd_game_music, 1, false);

game_set_speed(60, gamespeed_fps);

options = ["RESUME", "RESTART", "QUIT"];
opt_number = array_length(options);
menu_min = 0;
menu_index = 0;