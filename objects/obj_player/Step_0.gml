move_player(self)
move_wrap(true, true, 50)

if (mouse_check_button_pressed(mb_left)) {
    var touch_x = device_mouse_x_to_gui(0);
    var touch_y = device_mouse_y_to_gui(0);

    var distance = point_distance(x, y, touch_x, touch_y);

    show_debug_message(distance);

        // If we're at the destination coordinates
    if (distance == 0)
    {
        // Set instance speed to zero to stop moving
        speed = 0; 
    }
    else
    {
        // This is the maximum distance you want to move each frame
        var max_step = 100;
      
        // Move towards the destination coordinates by no more than max_step
        move_towards_point(touch_x, touch_y, 5);
    }
}