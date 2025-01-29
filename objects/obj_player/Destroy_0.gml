effect_create_above(ef_explosion, x, y, 1, c_blue);

global.game_state = STATES.GAMEOVER;

audio_play_sound(snd_gameover, 1, false);