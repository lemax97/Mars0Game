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
		// TO DO: super attack charge
	}
}
instance_destroy(id, true);