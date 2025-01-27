var _effect_color = c_gray;
switch color
{
	case COLORS.BLUE:
		_effect_color = c_blue;
		break;
	case COLORS.RED:
		_effect_color = c_red;
		break;
}
effect_create_layer("Instances", ef_firework, x, y, 0.1, _effect_color);