function collision_figure(_figure, _other){
	var _dir = _figure.direction
	var _dir2 = _other.direction
	
	_figure.direction = 90
	_other.direction = -90

}
