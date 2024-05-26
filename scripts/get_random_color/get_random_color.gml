#macro COLORS [c_red, c_green, c_blue]

function get_random_color() {
	var _random_color_index = irandom(array_length(COLORS) - 1)
	
	return COLORS[_random_color_index]
}
