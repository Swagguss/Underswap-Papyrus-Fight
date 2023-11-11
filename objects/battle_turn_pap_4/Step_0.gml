/// @description Insert description here
// You can write your code in this editor

if (started) {
	_time++
	rotationAngle += 0.02;
}

if (_time == 1) {
	Battle_SetSoul(battle_soul_red)
	var _a = instance_create_depth(0,0,0,battle_bone_stab_alert);
	_a.duration = 60;
	_a.x1 = battle_board.x-5;
	_a.y1 = battle_board.y-battle_board.up;
	_a.x2 = battle_board.x+5;
	_a.y2 = battle_board.y+battle_board.down;
	audio_play_sound(snd_exclamation,0,0);
}

    // Update bone positions and angles every frame after they are created
    if (_time > 61) {
        for (var i = 0; i < array_length_1d(bones); i++) {
            var newAngle = degtorad(i * (360 / numBones)) + rotationAngle;
            var boneX = battle_board.x + radius * cos(newAngle);
            var boneY = battle_board.y + radius * sin(newAngle);

            var bone = bones[i];
            bone.x = boneX;
            bone.y = boneY;
            bone.angle = point_direction(boneX, boneY, battle_board.x, battle_board.y);
        }
    }

if (_time == 61) {
    for (var i = 0; i < numBones; i++) {
        var angle = degtorad(i * (360 / numBones));
        var boneX = battle_board.x + radius * cos(angle);
        var boneY = battle_board.y + radius * sin(angle);

        var bone = MakeBoneV(boneX, boneY, 0, 0, 0, 0, 0, 0, 0, 1);
        bones[i] = bone; // Store bone reference
        Anim_Create(bone,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.IN_OUT,0,50,90,0);
    }
	var _rotbone = MakeBoneV(battle_board.x,battle_board.y,0,0,0,0,0,0,0,1)
	Anim_Create(_rotbone,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.IN_OUT,0,250,120,0);
	Anim_Create(_rotbone,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.y+battle_board.down,-battle_board.down,20,0);
	Anim_Create(_rotbone,"rotate",ANIM_TWEEN.CUBIC,ANIM_EASE.IN_OUT,0,4,180,0);
	var _rotboneB = MakeBoneV(battle_board.x,battle_board.y,0,0,0,BONE.ORANGE,0,0,0,1)
	Anim_Create(_rotboneB,"length",ANIM_TWEEN.CUBIC,ANIM_EASE.IN_OUT,0,250,120,0);
	Anim_Create(_rotboneB,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,battle_board.y-battle_board.up,battle_board.up,20,0);
	Anim_Create(_rotboneB,"rotate",ANIM_TWEEN.CUBIC,ANIM_EASE.IN_OUT,0,-1,180,0);
}

if (_time == 1200) {
	Battle_SetSoul(battle_soul_red);
}