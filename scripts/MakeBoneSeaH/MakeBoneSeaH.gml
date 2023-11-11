// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MakeBoneSeaH(){

	var Animsin = 0
	var Y = argument[0]
	var LENGTH = argument[1]
	var VSPEED = argument[2]
	var COLOR = argument[3]
	var OUT = argument[4]
	var SIZE = argument[5]
	var K = argument[6]
	var UDF = argument[7]
	var UDS = argument[8]
	for (i = SIZE; i > 0; i -= 1)
	{
	    Animsin += (UDS * 0.3)
	    LENGTH = (LENGTH + ((cos(Animsin) * UDF) * 4))
	    if (VSPEED > 0)
		    Y -= (5 * VSPEED)
		else
		    Y += ((5 * VSPEED) * -1)
	    MakeBoneLeft(Y, LENGTH, VSPEED, COLOR, OUT, 0, 0, 0, -1)
		MakeBoneRight(Y, ((((battle_board.left + battle_board.right) - LENGTH) - K) - 20), VSPEED, COLOR, OUT, 0, 0, 0, -1)
}
}