function set_figure_position(_figure) {
	_screen_width = display_get_width();
	_screen_height = display_get_height();
	
	var _obj_width = sprite_get_width(_figure.sprite_index)
	var _obj_height = sprite_get_height(_figure.sprite_index)
		
	var _random_x = irandom_range(0, _screen_width - _obj_width);
	var _random_y = irandom_range(0, _screen_height - _obj_height);

	_figure.x = _random_x
	_figure.y = _random_y
}