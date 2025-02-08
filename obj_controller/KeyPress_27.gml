if global.game_state == STATES.PLAYING
{
	global.game_state = STATES.PAUSED;
	audio_play_sound(snd_esc, 1, false);
}
else if global.game_state == STATES.PAUSED
{
	global.game_state = STATES.PLAYING;
	audio_resume_all();
}