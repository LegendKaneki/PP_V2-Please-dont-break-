/// @description Insert description here
// You can write your code in this editor

if(keyboard_check(vk_add) && display_width > 640 * global.window_scale)
{
	global.window_scale += .5;
	
	window_set_size(640 * global.window_scale, 360 * global.window_scale);
	if (display_width <= 640 * global.window_scale) {window_set_position(0,0);}
	else if (display_width > 640 * global.window_scale)
	{
		if (set_position == false)
		{
			alarm[0] = 1;
			set_position = true;
		}
	}
}

else if (keyboard_check(vk_subtract) && global.window_scale >= 1)
{
	global.window_scale -= 0.5;
	window_set_size(640 * global.window_scale, 360 * global.window_scale);
	if(display_width <= 640 * global.window_scale) {window_set_position(0,0);}
	else if (display_width  > 640 * global.window_scale)
	{
		if(set_position == false)
		{
			alarm[0] = 1;
			set_position = true;
		}
	}
}