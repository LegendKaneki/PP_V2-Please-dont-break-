if(instance_position(mouse_x,mouse_y,par_player) && mouse_check_button_pressed(mb_left))
{
	var player;
	player = instance_nearest(mouse_x,mouse_y,par_player);
	
	global.selected = player;
	
	scr_place_move_thing();
}

if(global.selected != noone && mouse_check_button_pressed(mb_right) && instance_position(mouse_x,mouse_y,obj_move_thing))
{
	global.moving = false;
	with(obj_move_thing) {instance_destroy();}
	with(global.selected)
	{
		scr_nav(x,y,round(mouse_x/32) * 32,round(mouse_y/32)* 32);
	}
}

if(global.moving == true)
{
	with(global.selected)
	{ 
		if(patch_index == -1)
		{
			our_node_x = x;
			our_node_y = y;
			global.moving = false;
		}
	}
}
