var _space_key = keyboard_check_pressed(vk_space)

if (_space_key) {
	if (open) {
		room_restart()
	} else {
		open = true
	}
}

