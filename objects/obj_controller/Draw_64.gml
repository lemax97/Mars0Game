draw_set_font(fnt_messages);
draw_set_color(c_yellow);
draw_text(30, 30, "SCORE: " + string(score));

if global.game_state != STATES.PLAYING
{
	audio_pause_all();
	if global.game_state == STATES.PAUSED
	{
		draw_text(900, 30, "PAUSE");
		
	}
	else //not playing and not paused
	{
		if (room == rm_level_2 and !instance_exists(obj_boss))
		{
			draw_text(850, 30, "VICTORY");
			audio_stop_sound(snd_game_music);
		}
		else
		{
			draw_text(850, 30, "GAME OVER");
			audio_stop_sound(snd_game_music);
		}
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

if (instance_exists(obj_player))
{
	var _xhp = 30;
	repeat(obj_player.hp)
	{
		image_speed = 0.2;
		draw_sprite(spr_live, -1, _xhp, camera_get_view_height(view_camera[0])-30);
		_xhp += 30;
	}
	
	var _sa = obj_player.super_attack;
	draw_set_font(fnt_messages);
	
	if _sa >= 100
	{
		draw_set_color(c_white);
	}
	else
	{
		draw_set_color(c_gray);
	}
	
	draw_text(30, 60, "X-BOMB: " + string(obj_player.super_attack) + "%");
}

if (instance_exists(obj_player_defender))
{
	var _xhp = 30;
	repeat(obj_player_defender.hp)
	{
		image_speed = 0.2;
		draw_sprite(spr_live, -1, _xhp, camera_get_view_height(view_camera[0])-30);
		_xhp += 30;
	}
}