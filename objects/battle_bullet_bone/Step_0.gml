/// @description Insert description here
// You can write your code in this editor
angle += rotate
if(collision_line(x+lengthdir_x(2,angle+90)+lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)+lengthdir_y(length/2,angle),x+lengthdir_x(2,angle+90)-lengthdir_x(length/2,angle),y+lengthdir_y(2,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)||collision_line(x-lengthdir_x(1,angle+90)+lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)+lengthdir_y(length/2,angle),x-lengthdir_x(1,angle+90)-lengthdir_x(length/2,angle),y-lengthdir_y(1,angle+90)-lengthdir_y(length/2,angle),battle_soul,0,0)){
	if(color == BONE.WHITE){
	        Player_HurtKr();
	}else if(color == BONE.BLUE){
	    if!(battle_soul.x = battle_soul.xprevious&&battle_soul.y = battle_soul.yprevious){
	        Player_HurtKr();
	    }
	}else if(color == BONE.ORANGE){
	    if(battle_soul.x == battle_soul.xprevious&&battle_soul.y == battle_soul.yprevious){
	        //Player_HurtKr();
	    }
	}else{
	    Player_HurtKr();
	}
}