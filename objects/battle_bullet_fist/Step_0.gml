///@desc Step
var newAngle = _ang + angleChange;
startX = endX + lengthdir_x(distanceFromCenter, newAngle);
startY = endY + lengthdir_y(distanceFromCenter, newAngle);

_ang = newAngle; // Update the angle
image_angle=_ang
if(collision_line(startX,startY,x,y,battle_soul,false,true)){
	if(_col = 0){
	        Player_HurtKr();
	}else if(_col = 1){
	    if(Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN) || Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else if(_col = 2){
	    if(!Input_IsHeld(INPUT.LEFT) && !Input_IsHeld(INPUT.UP) && !Input_IsHeld(INPUT.DOWN) && !Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else{
	    Player_HurtKr();
	}
}
if (place_meeting(x,y,battle_soul)) {
	if(_col = 0){
	        Player_HurtKr();
	}else if(_col = 1){
	    if(Input_IsHeld(INPUT.LEFT) || Input_IsHeld(INPUT.UP) || Input_IsHeld(INPUT.DOWN) || Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else if(_col = 2){
	    if(!Input_IsHeld(INPUT.LEFT) && !Input_IsHeld(INPUT.UP) && !Input_IsHeld(INPUT.DOWN) && !Input_IsHeld(INPUT.RIGHT)){
	        Player_HurtKr();
	    }
	}else{
	    Player_HurtKr();
	}
}
_timer++
if (_timer == 1) {
	Anim_Create(self,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,startX,endX-startX,_duration,_pause)
	Anim_Create(self,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.IN,startY,endY-startY,_duration,_pause)
	Anim_Create(self,"x",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,endX,startX-endX,_duration,_pause+_duration+_stay)
	Anim_Create(self,"y",ANIM_TWEEN.CUBIC,ANIM_EASE.OUT,endY,startY-endY,_duration,_pause+_duration+_stay)
	_ang = point_direction(startX,startY,endX,endY)
}
if (_timer >= _pause+_duration*2+_stay) {
	//instance_destroy()
}
show_debug_message(string(x)+" "+string(y))
if (_col == 0) 
{
	image_blend = c_white
	_color = c_white
} else if (_col == 1){
	_color=make_color_rgb(20,169,255);
	image_blend = make_color_rgb(20,169,255);
}
else if(_col==2){
	_color=make_color_rgb(255,160,64);
	image_blend=make_color_rgb(255,160,64);
}