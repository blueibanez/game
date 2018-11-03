var maxpads = gamepad_get_device_count();
for (var i = 0; i < maxpads; i++)
{
    if (gamepad_is_connected(i))
    {
		gamepad_set_axis_deadzone(i, 0.15);
		hdir = gamepad_axis_value(i, gp_axislh);
		vdir = gamepad_axis_value(i, gp_axislv);
		pause = gamepad_button_check_pressed(i, gp_start);
		interact = gamepad_button_check_pressed(i, gp_face1);
    }
}

if(pause && GameStateManager.state == PLAY){GameStateManager.state = PAUSE;}
else if(pause){GameStateManager.state = PLAY;}

if(GameStateManager.state == PLAY){
	if(interact){
		with(interactionCircle){
			collect = true;
		}
	}
	
	spdx = hdir * maxspd;
	spdy = vdir * maxspd;

	if(spdx != 0){
		if(place_meeting(x+spdx,y,wall)){
			repeat(abs(spdx)){
				if(!place_meeting(x+sign(spdx),y,wall)){x+=sign(spdx);}
				else{break;}
			}
			spdx = 0;
		}
	}

	if(spdy != 0){
		if(place_meeting(x,y+spdy,wall)){
			repeat(abs(spdy)){
				if(!place_meeting(x,y+sign(spdy),wall)){y+=sign(spdy);}
				else{break;}
			}
			spdy = 0;
		}
	}

	x+=spdx;
	y+=spdy;
}
