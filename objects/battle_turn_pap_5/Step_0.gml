// turn 5
if (started) {
    _time++
}

// Set player's soul to blue at the beginning
if (_time == 1) {
    Battle_SetSoul(battle_soul_blue);
}

// Bone Rain - Random bones falling from the top
if (_time >= 50 && _time <= 200) {
    if (_time mod 15 == 0) {
        var randX = irandom_range(-battle_board.left/20, battle_board.right/20)*20;
        MakeBoneV(randX+battle_board.x, 60, 5, 0, 2, 0, 0, 0, 0, 1);
    }
}

// Moving Gaster Blasters
if (_time == 250) {
    for (var i = 0; i < 5; i++) {
        var gbX = -battle_board.left + battle_board.x - i * 20;
        var gb = MakeGB(gbX, -50, gbX, battle_board.y-battle_board.up, 0, 270, 1, 1, 2, 60, 180);
        Anim_Create(gb, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN_OUT, gb.x,60, 180, 60);
    }
}

// Large sweeping bone at the bottom
for (var i = 0; i < 20; i++) {
	if (_time == 500 + i*60) {
	var sweepBone = MakeBoneBottom(-battle_board.left+battle_board.x, 20, 0, BONE.WHITE, 0, 0, 0, 0, 300);
	Anim_Create(sweepBone, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, sweepBone.x, battle_board.left+battle_board.right, 100, 0);
	Anim_Create(sweepBone, "y", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, sweepBone.y, sweepBone.length*2, 50, 70);
	var sweepBoneBlue = MakeBoneTop(battle_board.right+battle_board.x, 80, 0, BONE.BLUE, 0, 0, 0, 0, 300);
	Anim_Create(sweepBoneBlue, "x", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, sweepBoneBlue.x,-battle_board.left-battle_board.right, 150, 0);
	Anim_Create(sweepBoneBlue, "y", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, sweepBoneBlue.y, -sweepBoneBlue.length*2, 50, 120);
	}
}

// Reset soul color at the end of the turn
if (_time == 1050) {
    Battle_SetSoul(battle_soul_red);
}
