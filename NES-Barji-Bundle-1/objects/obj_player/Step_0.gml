var _dt = delta_time / 1000000;




if keyboard_check(ord("W"))
{
	motion_add(image_angle, 0.1);	
	
	is_thrusting = true;
}
else
{
	is_thrusting = false;
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

if is_thrusting
{
	sprite_index = spr_ship_thrust_1;
}
else 
{
	sprite_index = spr_ship_idle;
}

//Angle from 0-360, starting right.
var _wrappedImageAngle = image_angle % 360;

//Convert Angle to Vector.
var _xDir = -dcos(_wrappedImageAngle);
var _yDir = dsin(_wrappedImageAngle);


//Move the background based on Vector, if thrusting.
if speed > 0 and is_thrusting
{
	layer_hspeed(background_layer_id, _xDir);
	layer_vspeed(background_layer_id, _yDir);
}



