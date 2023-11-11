switch(effect){
	case -1:
		_offset_x=0;
		_offset_y=0;
		break;
		
	case 0:
		if(_effect_shook){
			_offset_x=random_range(-1,1);
			_offset_y=random_range(-1,1);
		}
		_effect_shook=!_effect_shook;
		break;
	case 2:
		siner++;
		_alpha_outline = 1/sin(siner/10);
		_outline = true;
		break;
}
if (_effect_wave) {
	siner++;
	_offset_x=4*cos(siner/18);
	_offset_y=2*sin(siner/18);
}