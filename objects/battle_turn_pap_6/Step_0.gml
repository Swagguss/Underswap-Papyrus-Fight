// turn 6
if (started) {
    _time++
}

// Set player's soul to blue at the beginning
if (_time == 1) {
    Slam(3);
	Battle_SetSoul(battle_soul_blorange);
	MakeBoneWallBottom(60,battle_board.down-20,1000);
	for (var i = 0; i < 6; i++) {
		var _platform = makeplatform(i*60+battle_board.x-battle_board.left+10,battle_board.y+battle_board.down+5,30,0,0,1,0);
		Anim_Create(_platform, "y", ANIM_TWEEN.QUAD,ANIM_EASE.IN_OUT,_platform.y, -battle_board.down,120);
	}
}

for (var i = 0; i < 15; i++) {
    if (_time == i * 60 + 60) {
        var _randY, _randX;
        var attempts = 0;
        do {
            _randY = irandom_range(0, view_hport[0]);
            _randX = irandom_range(0, view_wport[0]);
            attempts++;
            if (attempts > 50) {  // Limit to prevent infinite loop
                break;
            }
        } until (!((_randY > battle_board.y - battle_board.up && _randY < battle_board.y + battle_board.down) &&
                   (_randX > battle_board.x - battle_board.left && _randX < battle_board.x + battle_board.right)));

        var diff_x = battle_soul.x - _randX;
        var diff_y = battle_soul.y - _randY;
        var magnitude = sqrt(diff_x * diff_x + diff_y * diff_y);
        var norm_x = diff_x / magnitude;
        var norm_y = diff_y / magnitude;
        var _flingBone = MakeBoneV(_randX, _randY, 25, norm_x * 2, norm_y * 2, 0, 0, 3, 0, 1);
    }
}