
function findProperty(_map, _sprite_value) {
	var keys = struct_get_names(_map);

	// Iterate over each key
	for (var i = 0; i < array_length(keys); i++) {
		var key = keys[i];
		var sprites = struct_get(_map, key)

		// Iterate over each sprite in the array
		for (var j = 0; j < array_length(sprites); j++) {
			var sprite = sprites[j];

			if (sprite == _sprite_value) {
				return key;
			}
		}
	}
}

function game_over(_player, _other){
	var _map_zakraska = {
		full: [spr_solid_circle, spr_solid_triangle, spr_solid_rectangle],
		dashed: [spr_dashed_rectangle, spr_dashed_circle, spr_dashed_triangle],
		empty: [spr_empty_rectangle, spr_empty_circle, spr_empty_rectangle]
	}

	var _map_share = {
		circle: [spr_dashed_circle, spr_empty_circle, spr_solid_circle],
		triangle: [spr_dashed_triangle, spr_empty_triangle, spr_solid_triangle],
		rectangle: [spr_dashed_rectangle, spr_empty_rectangle, spr_solid_rectangle]
	}

	var _figure_colors = {
		red: [c_red],
		blue: [c_blue],
		green: [c_green]
	}

	var _player_shape = findProperty(_map_share, _player.figure_sprite);
	var _other_shape = findProperty(_map_share, _other.sprite_index);

	var _player_zakraska = findProperty(_map_zakraska, _player.figure_sprite);
	var _other_zakraska = findProperty(_map_zakraska, _other.sprite_index);

	var _player_color = findProperty(_figure_colors, _player.figure_color);
	var _other_color = findProperty(_figure_colors, _other.image_blend);

	if (_player_shape == _other_shape or _player_zakraska == _other_zakraska or _player_color == _other_color) {
		return true;
	} else {
		return false;
	}
}
