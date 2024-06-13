scale_decay = 0.005;
rotation_gain = 0.5;

probability = random_range(0, 1);

rotation_dir = 0;

min_size = 0.02;

default_scale = image_xscale;


if probability < 0.5
{
	rotation_dir = 1;
}
else
{
	rotation_dir = -1;
}
