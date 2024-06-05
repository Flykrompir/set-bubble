// function check_overlapping(_figure, _figures) {
//   for (var _i = 0; _i < array_length(_figures); _i++) {
//     var _other_figure = _figures[_i];
//     if (_figure.x == _other_figure.x && _figure.y == _other_figure.y) {
//         return true;
//     }
//   }

//   return false;
// }

// function create_figures_positions(_figures_number) {
//   var _positions = [];

//   for (var _i = 0; _i < _figures_number; _i++) {
//     var _x = irandom_range(0, room_width);
//     var _y = irandom_range(0, room_height);

//     var _is_overlapping = check_overlapping({x: _x, y: _y}, _positions);

//     if (_is_overlapping) {
//       _i--;
//       continue;
//     } else {
//       _positions[array_length(_positions)] = {x: _x, y: _y};
//     }
      
//   }

//   return _positions;
// }



function use_figures_positions(_figures_number) {
  var _positions = [];

  function check_overlapping(_x, _y, _width, _height) {
    for (var _i = 0; _i < array_length(_positions); _i++) {
      var _position = _positions[_i];
      
      if (_x >= _position.x && _x <= _position.x + _position.width && _y >= _position.y && _y <= _position.y + _position.height) {
        return true;
      }
    }

    return false;
  }

  function add(_width, _height) {
    for (var _i = 0; _i < array_length(_positions); _i++) {
      var _position = _positions[_i];
      
      var _x = irandom_range(0, room_width);
      var _y = irandom_range(0, room_height);

      var _is_overlapping = check_overlapping(_x, _y, _width, _height);

      if (_is_overlapping) {
        _i--;
        continue;
      } else {
        _positions[array_length(_positions)] = { x: _x, y: _y, width: _width, height: _height };
      }
    }
  }

  return {
    add: add,
  }
}