if room == rm_level_2 and global.game_state == STATES.PLAYING
{
	audio_play_sound(snd_colorswitch, 1, false);
	switch color
	{
		case COLORS.RED:
			color = COLORS.BLUE;
			sprite_index = spr_player_blue;
			break;
		case COLORS.BLUE:
			color = COLORS.RED;
			sprite_index = spr_player_red;
			break;
		default:
			color = COLORS.NONE;
			sprite_index = spr_player;
	}
}