effect_create_above(ef_explosion, x, y, 1, c_blue);

global.game_state = STATES.GAMEOVER;
show_debug_message(string(global.game_state));