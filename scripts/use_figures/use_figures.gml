function use_figures(_obj_figure) constructor {
  max_count = 10;
  min_count = 8;
  in_use = 0;
  figure = _obj_figure;

  function create_figure() {
    var _instanceX = irandom_range(-100, 0);
    var _instanceY = irandom_range(-100, 0);
    
    var _instance_figure = instance_create_layer(_instanceX, _instanceY, "Instances", figure);

    set_figure_sprite(_instance_figure, get_random_sprite());
    set_figure_color(_instance_figure, get_random_color());

    _instance_figure.direction = irandom_range(0, 359);
    _instance_figure.speed = 1;

    in_use++;
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
      for (var _i = 0; _i < min_count; _i++) {
        create_figure()
      }
    }
  }
}