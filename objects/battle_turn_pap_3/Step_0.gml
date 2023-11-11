/// @description Insert description here
// You can write your code in this editor

if (started)
	_time++

if (_time == 1) {
	Slam(3)
	Battle_SetSoul(battle_soul_blorange)
	var _a = instance_create_depth(0,0,0,battle_bone_stab_alert);
	_a.duration = 100;
	_a.x1 = battle_board.x-battle_board.left+1;
	_a.y1 = battle_board.y+battle_board.down-65;
	_a.x2 = battle_board.x+battle_board.right-2;
	_a.y2 = battle_board.y+battle_board.down-2;
	audio_play_sound(snd_exclamation,0,0);
	for (var i = 600; i > 0; i--;) {
		MakeBoneBottom(-100-i*12,59,6,0,0,0,0,1);
	}
}
if (_time == 30) {
    for (var i = 0; i < 5; i++) {    
        var platform = makeplatform(i * 40 + 225, 0, 20, 0, 0, 1, 0); // Create platform at Y=0
        Anim_Create(platform, "y", ANIM_TWEEN.CUBIC, ANIM_EASE.IN_OUT, 0, 320, 60, 0); // Animate to Y=300
    }
}


for (var i = 10; i > 0; i--;) {
	if (_time == i * 60) {
		alarm[0] = 1
	}
}

if (_time == 1200) {
	Battle_SetSoul(battle_soul_red);
}