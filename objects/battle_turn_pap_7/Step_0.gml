// turn 7
if (started) {
    _time++
}
if (_time == 1) {
	Battle_SetSoul(battle_soul_red)
	Slash(battle_board.x,battle_board.y,90,0,120);
	Slash(battle_board.x,battle_board.y,0,0,120);
}
if (_time == 90) {
	Slash(battle_board.x,battle_board.y,45,0,120);
	Slash(battle_board.x,battle_board.y,-45,0,120);
}
for (var i = 0; i < 10; i++) {
	if (_time == i*60 + 210) {
		var _col = irandom(1)+1
		Slash(battle_board.x,battle_board.y,0,_col,120,10);
	}
}