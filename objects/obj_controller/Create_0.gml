enum STATES {
	PLAYING,
	PAUSED,
	GAMEOVER
};

randomize();

global.game_state = STATES.PLAYING;

game_set_speed(60, gamespeed_fps);

options = ["RESUME", "RESTART", "QUIT"];
opt_number = array_length(options);
menu_min = 0;
menu_index = 0;