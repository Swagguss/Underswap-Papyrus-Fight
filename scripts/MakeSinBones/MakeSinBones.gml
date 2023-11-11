// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
///@arg x
///@arg length
///@arg hspeed
///@arg color
///@arg out
///@arg size
///@arg gap
///@arg frequency
///@arg amplitude
function MakeSinBones(){

	var Animsin = 0;
	var X = argument[0];
	var LENGTH = argument[1];
	var VSPEED = argument[2];
	var COLOR = argument[3];
	var OUT = argument[4];
	var SIZE = argument[5];
	var K = argument[6];
	var UDF = argument[7];
	var AMP = argument[8];
	for (i = SIZE; i > 0; i -= 1){
		Animsin += 0.3
		LENGTH = (LENGTH + ((sin(Animsin) * UDF) * 4 * AMP))
		if (VSPEED > 0)
		    X -= (5 * VSPEED)
		else
		    X += ((5 * VSPEED) * -1)
		MakeBoneTop(X, LENGTH-K, VSPEED, COLOR, OUT, 0, 0, 0, -1)
		MakeBoneBottom(X, ((((battle_board.up + battle_board.down) - LENGTH) - K)), VSPEED, COLOR, OUT, 0, 0, 0, -1)
	}
}