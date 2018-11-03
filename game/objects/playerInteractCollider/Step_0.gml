inst = instance_place(x,y,collectable);
if(inst != noone && collect){
	with(inst){
		instance_destroy();
	}
	collect = false;
}