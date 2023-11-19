if(_menu==0){
	if(_mode==0){
		if(Input_IsPressed(INPUT.DOWN)){
			if(_choice<1){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice>0){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				_menu=3;
				event_user(0);
			}else{
				room_goto(room_settings);
			}
		}
	}else{
		if(Input_IsPressed(INPUT.LEFT)){
			if(_choice==1){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.RIGHT)){
			if(_choice==0){
				_choice=1;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.DOWN)){
			if(_choice!=2){
				_choice=2;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.UP)){
			if(_choice==2){
				_choice=0;
				event_user(2);
			}
		}else if(Input_IsPressed(INPUT.CONFIRM)){
			if(_choice==0){
				Player_Load(0);
				var target=Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM,-1);
				if(room_exists(target)){
					room_goto(target);
				}else{
					show_message("ERROR:\nAttempt to goto an unexisting room "+string(target));
				}
			}else if(_choice==1){
				_menu=2;
				_naming_name=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,Lang_GetString("ui.save.name.empty"));
				_confirm_title=Lang_GetString("menu.confirm.title.reset");
				event_user(0);
			}else if(_choice==2){
				room_goto(room_settings);
			}
		}
	}
}else if(_menu==1){
	if(Input_IsPressed(INPUT.CANCEL)){
			if(string_length(_naming_name)>0){
				_naming_name=string_delete(_naming_name,string_length(_naming_name),1);
	}
}else if(true){
    _naming_name = "FRISK";
    event_user(4);
    _menu=3;
    event_user(0);
}}
if(_menu==2||_menu==3){
	if(_confirm_name_update){
		_confirm_name_offset_x=random_range(-1,1);
		_confirm_name_offset_y=random_range(-1,1);
		_confirm_name_angle=random_range(-1,1);
	}
	_confirm_name_update=!_confirm_name_update;
}