if (last != other) {
	var _is_game_over = game_over(self, other)

	if (_is_game_over) {
		obj_game_over.open = true
		audio_play_sound(snd_loose, 1, false)
	} else {
		collision_player_with_figure(self, other)

		obj_game.points += 10

		effect_create_above(ef_explosion, other.x, other.y, 0.3, c_red)
		
		audio_play_sound(snd_destroy, 1, false)

		obj_game.figures.destroy_figure(other)

		last = other
	}
}
