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
	
	for (var _i = menu_min; _i < opt_number; _i++)
	{
		if menu_index == _i
		{
			draw_set_color(c_white);
		}
		else
		{
			draw_set_color(c_dkgray);
		}
		draw_text(850, 600 + 30 * _i, options[_i]);
	}
}

if instance_exists(obj_player)
{
	var _xhp = 30;
	repeat(obj_player.hp)
	{
		
		image_speed = 0.2;
		draw_sprite(spr_live, -1, _xhp, 750);
		_xhp += 30;
	}
}