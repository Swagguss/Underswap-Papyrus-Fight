if (started)
	_time++
	
if (_time == 1) {
	Battle_SetSoul(battle_soul_orange)
}

if (_time == 10) {
	alarm[0] = 1;
}

if (_time == 280) {
	Slam(3);
	MakeBoneWallBottom(60,50,400);
}
if (_time == 340) {
	Slam(1);
	MakeBoneWallTop(60,50,340);
}
if (_time == 400) {
	Battle_SetSoul(battle_soul_red);
	for (var i = 0; i < 10; i++;) {
		var _bonesRight = MakeBoneV(150-i*50,309,10,1.75,0,0,0,0,0,1);
		var _bonesLeft = MakeBoneV(490+i*50,329,10,-1.75,0,0,0,0,0,1);
	}
}

if (_time == 700) {
	MakeSinBones(0,50,3,0,0,50,25,0.25,4.5)
	for (i = 12; i > 0; i -= 1){
		MakeBoneBottom(0-i*200,140,7,BONE.BLUE,0,0,0,0)
	}
}

if (_time == 1200) {
	Battle_SetSoul(battle_soul_red);
}