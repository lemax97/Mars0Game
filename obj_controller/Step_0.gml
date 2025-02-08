if global.game_state != STATES.PLAYING //menu managing
{
	
		
	if global.game_state == STATES.PAUSED
	{
		menu_min = 0;
	}
	else
	{
		menu_min = 1;
	}
	
	var _move = keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
	menu_index += _move;
	
	if _move != 0
	{
		audio_play_sound(snd_menu, 1, false);
	}
	
	if menu_index < menu_min
	{
		menu_index = opt_number - 1;
	}
	else if menu_index > opt_number - 1
	{
		menu_index = menu_min;
	}
}

if room == rm_level_1 //check victory conditions for level 1
{
	if !instance_exists(obj_enemy_red)
		{
			global.game_state = STATES.GAMEOVER;
			
		}
		else
			{
				for (var _i = 0; _i < instance_number(obj_enemy_red); _i++)
					{
						var _enemy = instance_find(obj_enemy_red, _i);
						if _enemy.y >= room_height - 50
							{
								global.game_state = STATES.GAMEOVER;
							}
					}
			}
			
	if global.game_state == STATES.GAMEOVER	and !instance_exists(obj_enemy_red)
		{
			if room_exists(room_next(room))
			{
				room_goto_next();
			}
		}
}