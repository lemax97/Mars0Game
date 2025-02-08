if hp <= 0
{
	instance_destroy(id, true);
}

var _direction = floor(random_range(1,3));


var _move = _direction - 2;

hsp = spd * _move;

if (_move != 0)
{
	image_xscale = _move;
	sprite_index = spr_man_runR;
}
else
{
	sprite_index = spr_man_idle;
}

x += hsp;

