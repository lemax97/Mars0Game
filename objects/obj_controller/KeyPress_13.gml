if global.game_state != STATES.PLAYING
{
	switch menu_index
	{
		case 0:
			global.game_state = STATES.PLAYING;
			break;
		case 1:
			game_restart();
			break;
		case 2:
			game_end();
			break;
	}
}