// turn 8
if (started) {
    _time++
}
if (_time % 60 == 1) {
	var _side = irandom(3)
	switch(_side) {
		case 0:
			var _yers = Punch(0,0,battle_board.x,battle_board.y,0,0,120,180)
			break;
		case 1:
			var _yers = Punch(0,view_hport[0],battle_board.x,battle_board.y,1,0,120,180)
			break;
		case 2:
			var _yers = Punch(view_wport[0],0,battle_board.x,battle_board.y,2,0,120,180)
			break;
		case 3:
			var _yers = Punch(view_wport[0],view_hport[0],battle_board.x,battle_board.y,0,0,120,180)
			break;
	}
	
	_yers._ang+=1
}
