/// @description Insert description here
// You can write your code in this editor

if (started)
	_time++

if (_time == 1) {
	Slam(1)
	for (var i = 20; i > 0; i--;) {
		MakeBoneTop(0-i*75,8,3,0,0,0,0,0);
		MakeBoneTop(view_wport[0]+i*75,8,3,0,0,0,0,0);
	}
}

for (var i = 10; i > 0; i--;) {
	if (_time == i * 60) {
		alarm[0] = 1
	}
}

if (_time == 800) {
	Battle_SetSoul(battle_soul_red);
}