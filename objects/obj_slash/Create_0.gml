instance = 0
function check_hit(){
	if (place_meeting(x, y, obj_hitable)){
            instance = instance_place(x, y, obj_hitable);
        }
}







