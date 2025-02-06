
var _direction = random(2);
//speed = spd;
//_direction = 0;
//show_debug_message(floor(_direction));

var _steps = floor(random_range(15, 35));

//image_speed = 0.2;

  switch (floor(_direction))
  {
		case 1://run left
			sprite_index = spr_man_runL;
			for (var _j = 0; _j < _steps; _j++)
			{
				x-= spd;
			}
			break;
		case 2:
			sprite_index = spr_man_runR;
			for (var _j = 0; _j < _steps; _j++)
			{
				x+= spd;
			}
			break;
		default:
			sprite_index = spr_man_idle;
	
  }

alarm[0] = game_get_speed(gamespeed_fps) * random_range(0.5, 5);