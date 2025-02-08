effect_create_above(ef_explosion, x - 30, y, 1, c_fuchsia);
effect_create_above(ef_explosion, x, y, 2, c_purple);
effect_create_above(ef_explosion, x + 30, y, 1, c_fuchsia);



score += 1000;

global.game_state = STATES.VICTORY;
audio_stop_sound(snd_game_music);
audio_play_sound(snd_victory, 1, false);