run_flag = false;
input_list = ds_list_create();
input_count = 0;
iterator = 0;

function start() {
    if (input_count > 0) {
        run_flag = true;
        next();
    }
}

function next() {
    if (iterator < ds_list_size(input_list)) {
        var _obj_next = ds_list_find_value(input_list, iterator);
        if (obj_clear_btn.stop_flag == false) {
            _obj_next.flag = true;
        } else {
            finish();
        }
    }
}

function finish() {
    obj_attack_btn.atk_range = 0;
    iterator = 0;
    input_count = 0;
    ds_list_clear(input_list);
    run_flag  = false;
    obj_clear_btn.stop_flag = false;
}

function iterate() {
    if (iterator < ds_list_size(input_list)) {
        var _obj_this = ds_list_find_value(input_list, iterator);
        _obj_this.flag = false;
        iterator++;
        obj_player.steps++;
		
        if (obj_run_btn.iterator < obj_run_btn.input_count) {
            obj_run_btn.next();
        } else {
            obj_run_btn.finish();
        }
    }
}