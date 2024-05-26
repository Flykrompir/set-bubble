function start_game(_methods) {
    for (var _i = 0; _i < 30; _i++) {
        var _figure = instance_create_layer(0, 0, "Instances", obj_figure);
		
		_methods.set_figure_sprite(_figure, global.get_random_sprite())
		
		_methods.set_figure_color(_figure, global.get_random_color())
		
		_methods.set_figure_position(_figure)
		
        // Задаем случайное направление и скорость
        _figure.direction = irandom_range(0, 359); // Случайное направление от 0 до 359 градусов
        _figure.speed = random(4) + 1; // Случайная скорость от 1 до 5
    }
}