// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg startX
///@arg startY
///@arg endX
///@arg endY
///@arg type
///@arg pause
///@arg duration
///@arg stay
function Punch(){
	var startX = argument[0]
	var startY = argument[1]
	var endX = argument[2]
	var endY = argument[3]
	var _col = argument[4]
	var _pause = argument[5]
	var _duration = argument[6]
	var _stay = argument[7]
	var _fist = instance_create_depth(startX,startY,DEPTH_BATTLE.BULLET,battle_bullet_fist);
	_fist.startX=startX
	_fist.startY=startY
	_fist.endX=endX
	_fist.endY=endY
	_fist._col=_col
	_fist._pause=_pause
	_fist._duration=_duration
	_fist._stay=_stay
	
	return _fist
}