function start_game(_methods) {
    var _figures_number = 10;
    // var _positions = create_figures_positions(_figures_number);
    var _figures_positions = use_figures_positions(_figures_number);

    for (var _i = 0; _i < _figures_number; _i++) {
        var _figure = instance_create_layer(0, 0, "Instances", obj_figure);
		
		_methods.set_figure_sprite(_figure, global.get_random_sprite())
		
		_methods.set_figure_color(_figure, global.get_random_color())
		
		// _methods.set_figure_position(_figure)
        var _position = _figures_positions.add(_figure.sprite_width, _figure.sprite_height);
        
        _figure.x = _positions[_i].x;
        _figure.y = _positions[_i].y;
		
        // Задаем случайное направление и скорость
        _figure.direction = irandom_range(0, 359); // Случайное направление от 0 до 359 градусов
        _figure.speed = 1; // Случайная скорость от 1 до 5
    }
}