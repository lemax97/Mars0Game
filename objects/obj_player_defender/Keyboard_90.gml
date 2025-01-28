if (can_shoot and global.game_state == STATES.PLAYING)
{
	can_shoot = false;
	
	var _bullet = instance_create_layer(x, y, "Instances", obj_bullet_player);
	_bullet.atk = atk;
	_bullet.direction = direction;
	_bullet.spd = 10;
	_bullet.color = color;
	
	switch color
	{
		case COLORS.RED:
			_bullet.sprite_index = spr_bullet_red;
			break;
		case COLORS.BLUE:
			_bullet.sprite_index = spr_bullet_blue;
			break;
		default:
			_bullet.sprite_index = spr_bullet_player;
			break;
	}
	
	audio_play_sound(snd_shoot, 1, false);
	alarm[0] = shoot_delay;
}