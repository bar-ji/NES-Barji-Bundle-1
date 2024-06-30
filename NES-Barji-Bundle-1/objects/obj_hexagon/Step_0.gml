
if image_xscale > 0 + scale_decay
{
	image_xscale -= scale_decay * obj_game.difficulty;
	image_yscale -= scale_decay * obj_game.difficulty;
}
else
{
	image_xscale = default_scale;
	image_yscale = default_scale;
	
	probability = random_range(0, 1);
	
	if probability < 0.33
	{
		sprite_index = spr_hexagon;
	}
	else if probability < 0.66
	{
		sprite_index = spr_hexagon_2;
	}
	else
	{
		sprite_index = spr_hexagon_3;
	}
	
	if probability < 0.5
	{
		rotation_dir = 1;
	}
	else
	{
		rotation_dir = -1;
	}
	
	obj_game.points += 500;
	
	if(obj_game.difficulty < 3.0)
	{
		obj_game.difficulty += 0.1;
	}
	
	
	
}




image_angle += rotation_dir * rotation_gain;