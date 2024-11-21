if hp<1{

scrDrop()
instance_destroy()
	
}

if falling=0{
	
	
if place_meeting(x+speed,y,oSolid) or !place_meeting(x+speed*32,y+1,oSolid){
	speed=speed*(-1)
	image_xscale=-image_xscale
}

if !place_meeting(x,y+1,oSolid){
falling=1	
//y=y+2	
	
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