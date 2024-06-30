points = 0

figures = new use_figures(obj_figure, obj_game)

figures.start()
// start_game({
// 	set_figure_sprite: global.set_figure_sprite,
// 	set_figure_color: global.set_figure_color,
// 	set_figure_position: global.set_figure_position,
// })

bw = browser_width
bh = browser_height

window_set_size(bw, bh)
view_enabled = true
view_visible[0] = true
global.cam = camera_create_view(0, 0, bw, bh)
view_camera[0] = global.cam

function on_resize() {
	var new_width = browser_width
	var new_height = browser_height

	room_width = new_width
	room_height = new_height

	window_set_size(new_width, new_height)
  surface_resize(application_surface, new_width, new_height);
  display_set_gui_size(new_width, new_height)
  camera_set_view_size(global.cam, new_width, new_height)
	camera_set_view_pos(global.cam, 0, 0)

	bw = new_width
	bh = new_height
}

place_player(obj_player, bw / 2, bh / 2)

on_resize()