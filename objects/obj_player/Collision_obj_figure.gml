if (last != other) {
	var _is_game_over = game_over(self, other)

	if (_is_game_over) {
		obj_game_over.open = true
	} else {
		collision_player_with_figure(self, other)

		obj_game.points += 10

		effect_create_above(ef_explosion, other.x, other.y, 0.3, c_red)

		instance_destroy(other)

		last = other
	}
}
