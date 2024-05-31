// Ресурсы скриптов были изменены для версии 2.3.0, подробности см. по адресу
// https://help.yoyogames.com/hc/en-us/articles/360005277377
function game_over(_player, _other){
	if ( _player.color == _other.color or _player.shape == _other.shape or _player.zakraska == _other.zakraska ) { 
		return true
		
		} else { 
			return false
			}

}