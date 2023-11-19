/// @description Insert description here
// You can write your code in this editor
angle += rotate
if(collision_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)||collision_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)){
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
}