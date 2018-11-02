itemList = array_create(10);
selectedItem = 0;
moving = false;
timer = 0;
for(var i = 0; i<array_length_1d(itemList); i++){
	itemList[i] = instance_create_layer(i*37,0,"Instances",item);
}