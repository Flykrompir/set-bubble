#macro MOVE_SPD 5

function move_player(_obj_player) {
	right_key = keyboard_check(vk_right)
	left_key = keyboard_check(vk_left)
	down_key = keyboard_check(vk_down)
	up_key = keyboard_check(vk_up)
	
	x_spd = (right_key - left_key) * MOVE_SPD
	y_spd = (down_key - up_key) * MOVE_SPD
	
	_obj_player.x += x_spd
	_obj_player.y += y_spd
}