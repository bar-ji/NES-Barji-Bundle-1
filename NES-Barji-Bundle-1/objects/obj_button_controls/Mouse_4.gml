/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(obj_controls_label))
{
	instance_destroy(obj_controls_label);
}
else 
{
	instance_create_layer(room_width / 2, room_height - 100, "Instances", obj_controls_label);
}
