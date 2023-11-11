// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Slam(){
	Battle_SetSoul(battle_soul_blue)
	var _dir = argument[0];
	battle_soul.dir = _dir*90;
	battle_soul.move = 6;
	battle_soul.impact = 1;
	battle_soul.jump_state = 2;
	battle_soul.on_block = 0;
	battle_soul.on_board = 0;
	battle_soul.on_platform = 0;
}