draw_set_font(fnt_messages);
draw_set_color(c_yellow);
draw_text(30, 30, "SCORE: " + string(score));

if global.game_state != STATES.PLAYING
{
	if global.game_state == STATES.PAUSED
	{
		draw_text(900, 30, "PAUSE");
	}
	else
	{
		draw_text(850, 30, "GAME OVER");
	}
}

if instance_exists(obj_player)
{
	var _xhp = 30;
	repeat(obj_player.hp)
	{
		draw_sprite(spr_live, 0, _xhp, 750);
		_xhp += 30;
	}
}