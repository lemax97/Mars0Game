
	
var _enemy_color = floor(random_range(0,2));

//show_debug_message(_enemy_color);
switch (_enemy_color)
{
	case 0:
		instance_create_layer(50, 
			50,  "Instances", obj_enemy_blue_bomber1);
		//show_debug_message("create blue");
		break;
	case 1:
		instance_create_layer(room_width - 50, 50,
		"Instances", obj_enemy_red_bomber2);
		//show_debug_message("create red");
		break;
}




alarm[0] = game_get_speed(gamespeed_fps) * random_range(3, 5);

