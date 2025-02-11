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
if (room == rm_level_0) //check victory conditions for level 0
{
	//alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);
	if (!instance_exists(obj_man))
	{
		global.game_state = STATES.GAMEOVER;
	}
	
	if (!instance_exists(obj_enemy_blue_bomber1) and !instance_exists(obj_enemy_red_bomber2))
	{
		global.game_state = STATES.VICTORY;
	}
	
	if (global.game_state == STATES.VICTORY)
		{
			if room_exists(room_next(room))
				{
					global.game_state = STATES.PLAYING;
					room_goto_next();
				}
		}		
}
if (room == rm_level_1) //check victory conditions for level 1
{
	if (!instance_exists(obj_enemy_red_fighter1))
		{
			global.game_state = STATES.VICTORY;
			
		}
		else
			{
				for (var _i = 0; _i < instance_number(obj_enemy_red_fighter1); _i++)
					{
						var _enemy = instance_find(obj_enemy_red_fighter1, _i);
						if _enemy.y >= room_height - 50
							{
								global.game_state = STATES.GAMEOVER;
							}
					}
			}
	if (global.game_state == STATES.VICTORY)
		{
			if room_exists(room_next(room))
				{
					room_goto_next();
				}
		}			
	
}

