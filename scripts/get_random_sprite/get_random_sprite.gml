#macro FIGURES [spr_empty_circle, spr_empty_rectangle, spr_dashed_rectangle]

function get_random_sprite(){
	var _random_spr_index = irandom(array_length(FIGURES) - 1)
	
	return FIGURES[_random_spr_index]
}
