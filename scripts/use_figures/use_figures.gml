function use_figures(_obj_figure, _obj_game) constructor {
  max_count = 130;
  min_count = max_count - 2;
  in_use = 0;
  figure = _obj_figure;

  figure_model = new use_figure_model(_obj_game);

  static create_figure = function () {  
    var _instance_figure = instance_create_layer(-100, -100, "Instances", figure);

    set_figure_sprite(_instance_figure, get_random_sprite());
    set_figure_color(_instance_figure, get_random_color());

    figure_model.add_figure(_instance_figure);

    _instance_figure.direction = irandom_range(0, 359);
    _instance_figure.speed = 1;

    in_use++;

    return _instance_figure
  }

  static start = function () {
    for (var _i = 0; _i < max_count; _i++) {
      create_figure()    
    }
  }

  static destroy_figure = function (_figure) {
    instance_destroy(_figure);
    in_use--;
  }

  static add_new = function () {
    if (in_use <= min_count) {
      for (var _i = 0; _i <= min_count; _i++) {
        create_figure()
      }
    }
  }
}