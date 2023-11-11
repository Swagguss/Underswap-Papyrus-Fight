/// @description Insert description here
// You can write your code in this editor
	if(color = BONE.WHITE){
	        Player_HurtKr();
	}else if(color = BONE.BLUE){
	    if(Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN) || Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else if(color = BONE.ORANGE){
	    if(!Input_IsHeld(INPUT.LEFT) && !Input_IsHeld(INPUT.UP) && !Input_IsHeld(INPUT.DOWN) && !Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else{
	    Player_HurtKr();
	}