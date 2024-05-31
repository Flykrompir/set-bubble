#macro FIGURES [spr_empty_circle, spr_empty_rectangle, spr_empty_triangle, spr_dashed_circle, spr_dashed_triangle, spr_dashed_rectangle, spr_solid_circle, spr_solid_triangle, spr_solid_rectangle]

function get_random_sprite(){
	var _random_spr_index = irandom(array_length(FIGURES) - 1)
	
	return FIGURES[_random_spr_index]
}
