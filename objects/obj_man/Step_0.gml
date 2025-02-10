if hp <= 0
{
	instance_destroy(id, true);
}
if (global.game_state == STATES.PLAYING)
{
var _cam_x = camera_get_view_x(cam);
var _cam_w = camera_get_view_width(cam);

var _move = 0;

switch (direction)
{
	case 0:
		_move = 0.5;
		sprite_index = spr_man_idle;
		spd = 0;
		break;
	case 1://run right
		_move = 0.5;
		sprite_index = spr_man_run;
		spd = 2;
		break;
	case 2://run left
		_move = -0.5;
		sprite_index = spr_man_run;
		spd = 2;
		break;
	case 3://walk right
		_move = 0.5;
		sprite_index = spr_man_walk;
		spd = 1;
		break;
	case 4://walk left
		_move = -0.5;
		sprite_index = spr_man_walk;
		spd = 1;
		break;
}

image_xscale = _move;
	
hsp = spd * _move;

x += hsp;

if (x  <= _cam_x)
{
	x = _cam_x;
	direction = 1;
}
		
if x >= _cam_x + _cam_w
{
	x = _cam_x + _cam_w;
	direction = 2;
}
}


