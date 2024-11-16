target_rm = 0;
target_x = 208;
target_y = 272;

function warp_player(_target_rm, _target_x, _target_y)
{
	if not instance_exists(obj_transition){	
		var _inst = instance_create_depth(0,0,-9999,obj_transition);
		_inst.target_rm = _target_rm;
		_inst.target_x = _target_x;
		_inst.target_y = _target_y;
	
	}
}



