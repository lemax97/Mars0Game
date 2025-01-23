enum STATES {
	PLAYING,
	PAUSED,
	GAMEOVER
};

randomize();

global.game_state = STATES.PLAYING;

game_set_speed(60, gamespeed_fps);