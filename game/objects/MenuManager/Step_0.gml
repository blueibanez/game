var maxpads = gamepad_get_device_count();
for (var i = 0; i < maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		gamepad_set_axis_deadzone(i, 0.5);
		hdir = gamepad_axis_value(i, gp_axislh);
		vdir = gamepad_axis_value(i, gp_axislv);
		pause = gamepad_button_check(i, gp_start);
    }
}
if(hdir > 0 && selectedItem < array_length_1d(itemList)-1){
	if(!moving){
		selectedItem++;
		moving = true;
	}
	else if(timer == 5){
		selectedItem++;
		timer = 0;
	}
	else timer++;
}
else if(hdir < 0 && selectedItem > 0){
	if(!moving){
		selectedItem--;
		moving = true;
	}
	else if(timer == 6){
		selectedItem--;
		timer = 0;
	}
	else timer++;
}
else if(hdir==0){
	moving = false;
	timer = -10;
}