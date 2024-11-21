image_angle=direction

if hp<1{
scrDrop()
instance_destroy()
	
}

if falling=0{

if direction=0{
	if place_meeting(x+speed,y,oSolid){
		direction=90	
	}
	if !place_meeting(x,y+1,oSolid){
		direction=270	
	}
	if !collision_rectangle(x-9,y-9,x+9,y+9,oSolid,0,0){
	//y=y+2	
	falling=1
	//image_angle
	}
	
	
	
}

if direction=180{
	
if place_meeting(x-speed,y,oSolid){
		direction=270	
	}
	if !place_meeting(x,y-1,oSolid){
		direction=90	
	}
	//if !place_meeting(x,y-1,oSolid){
	//direction=0	
	//}
}

if direction=90{
	if place_meeting(x,y-speed,oSolid){
		direction=180	
	}
	if !place_meeting(x+1,y,oSolid){
		direction=0	
	}
	//if !place_meeting(x+1,y,oSolid){
	//	direction=0
	//}
}

if direction=270{
	if place_meeting(x,y+speed,oSolid){
		direction=0	
	}
	if !place_meeting(x-1,y+1,oSolid){
		direction=180	
	}	
	//if !place_meeting(x-1,y,oSolid){
	//	direction=0
	//}
}
}


if falling=1{
	
direction=0
speed=0
y=y+2
if place_meeting(x,y+1,oSolid){
speed=0.5	
falling=0	
}
}