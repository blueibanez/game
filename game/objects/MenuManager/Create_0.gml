itemList = array_create(10);
menuPositions = array_create(10,array_create(2,0));
selectedItem = 0;
moving = false;
timer = 0;

for(var i = 0; i < array_length_1d(menuPositions); i++){
	menuPositions[i,0] = i*37+100;
	menuPositions[i,1] = 100;
}

instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),"menuLayer",menu);
for(var i = 0; i < array_length_1d(itemList); i++){
	if(i!= 0){
		itemList[i] = instance_create_layer(-100,-100,"menuItemsLayer",item);
	}
	else{
		itemList[i] = instance_create_layer(-100,-100,"menuItemsLayer",plantItem);
	}
	with(itemList[i]){
		menuPosition = i;	
	}
}

