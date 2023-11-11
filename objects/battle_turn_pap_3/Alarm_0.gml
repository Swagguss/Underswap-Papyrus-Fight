/// @description Insert description here
// You can write your code in this editor

var _timesMax = 7;
var _timeDelay = 60;

for (var i = 0; i < 2; i++) {
    var _heartPosX = battle_soul.x;
    var _heartPosY = battle_soul.y;
	var _index = floor(random_range(0,5));
    var _gbY = 200;
	var _gbX = _index*40 + 225;
    var _dir = 270;
    var _gb = instance_create_depth(_gbX, -50, 0, battle_bullet_gb); //Spawn gaster blaster
    _gb.x_target = _gbX;
    _gb.y_target = _gbY;
    _gb.angle_start = _dir;
    _gb.angle_target = _dir;
}

_times++;
if (_times < _timesMax)
    alarm[0] = _timeDelay;