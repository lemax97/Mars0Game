if room == rm_level_1
{
	other.hp -= atk;
}
else
{
	if color != other.color
	{
		other.hp -= atk;
	}
	else // same color, so not getting damage
	{
		if other.super_attack < 90
		{
			other.super_attack += 10;
		}
		else
		{
			other.super_attack = 100;
		}
	}
}
instance_destroy(id, true);