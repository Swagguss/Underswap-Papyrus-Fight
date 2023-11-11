/// @description Insert description here
// You can write your code in this editor

var _timesMax = 4;
var _timeDelay = 60;
var centerX = view_wport[0] / 2; // Center X of the view
var centerY = view_hport[0] / 2; // Center Y of the view

for (var i = 0; i < 1; i++) {
    var _heartPosX = battle_soul.x;
    var _heartPosY = battle_soul.y;
    var _gbX = random(640);
    var _gbY = random(200);
    var _dir = point_direction(_gbX, _gbY+280, _heartPosX, _heartPosY);
    // Calculate the edge position
    var edgePos = calculateEdgePosition(_dir, centerX, centerY, view_wport[0], view_hport[0]);
    var _gb = instance_create_depth(edgePos.x, edgePos.y, 0, battle_bullet_gb); //Spawn gaster blaster
    _gb.x_target = _gbX;
    _gb.y_target = _gbY+280;
    _gb.angle_start = _dir;
    _gb.angle_target = _dir;
    _gb.scale_y = 1;
}

_times++;
if (_times < _timesMax)
    alarm[0] = _timeDelay;











