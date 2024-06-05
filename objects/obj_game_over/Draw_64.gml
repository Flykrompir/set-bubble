if (open) {
	draw_text(50, 50, "game over")
	instance_deactivate_all(true)
} else {
	instance_activate_all()
}
