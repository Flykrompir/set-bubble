move_player(self)
move_wrap(true, true, 50)

if (mouse_check_button_pressed(mb_left)) {
    var touch_x = device_mouse_x_to_gui(0);
    var touch_y = device_mouse_y_to_gui(0);

    move_towards_point(touch_x, touch_y, 5)
}