function use_figure_model(_obj_game) constructor {
  info = []
  game = _obj_game

  gap = 200
  room_gap = 300
  figures_gap = 30
  start_increase = 100
  start = 0 - gap

  static add_figure = function (_figure) {
    var _width = sprite_get_width(_figure.sprite_index)
    var _height = sprite_get_height(_figure.sprite_index)

    var _x = start
    var _y = start

    var _last_height = figures_gap * -1
    var _last_width = figures_gap * -1
    var _last_x = start
    var _last_y = start

    if (array_length(info) > 0) {
      var _last = info[array_length(info) - 1]
      
      _last_height = _last.height
      _last_width = _last.width
      _last_x = _last.x
      _last_y = _last.y
    }

    if (_x + _width < room_width + room_gap && _y < 0) {
      _x = _last_x + _last_width + figures_gap
    } else if (_y + _height < room_height + room_gap && _x > room_width + room_gap) {
      _y = _last_y + _last_height + figures_gap
    } else if (_x > start && _y > room_height + room_gap) {
      _x = _last_x - figures_gap
    } else if (_y > start && _x < start) {
      _y = _last_y - figures_gap
    }

    if (_x + _width > room_width + room_gap) {
      _y = _last_y + _last_height + figures_gap
      _x = (room_width + room_gap) * -1
    } else if (_y + _height > room_height + room_gap) {
      _y = (room_height + room_gap) * -1
      _x = _last_x - figures_gap
    } else if (_x < start) {
      _y = _last_y - figures_gap
      _x = start
    } else if (_y < start) {
      start -= start_increase
      _y = start
      _x = start
    }

    array_push(info, {
      x: _x,
      y: _y,
      width: _width,
      height: _height,
    })

    return _figure
  }
}