/// @description step
// You can write your code in this editor
image_yscale = scale_y;
image_xscale = scale_x;
image_angle = angle
duration -= 1
if(duration <= 30){
	instance_destroy()
}

if(place_meeting(x,y,battle_soul)){
	if(_type = 0){
	        Player_HurtKr();
	}else if(_type = 1){
	    if(Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN) || Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else if(_type = 2){
	    if(!Input_IsHeld(INPUT.LEFT) && !Input_IsHeld(INPUT.UP) && !Input_IsHeld(INPUT.DOWN) && !Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else{
	    Player_HurtKr();
	}
}