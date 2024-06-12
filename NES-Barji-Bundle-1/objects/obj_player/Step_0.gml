var _dt = delta_time / 1000000;


if keyboard_check(ord("W"))
{
	motion_add(image_angle, 0.1);	
}

if keyboard_check(ord("A"))
{
	image_angle += 200 * _dt;	
}

if keyboard_check(ord("D"))
{
	image_angle -= 200 * _dt;
}

move_wrap(true, true, 0);

if keyboard_check_pressed(vk_space)
{
	instance_create_layer(x, y, "Instances", obj_bullet);	
}