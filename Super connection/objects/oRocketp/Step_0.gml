if place_meeting(x,y,oPlayer){
oPlayer.rocket=1

if oPlayer.rammo!=oPlayer.rmax{

if (oPlayer.rammo+2)>oPlayer.rmax{
	oPlayer.rammo=oPlayer.rmax	
	instance_destroy()
}else{
	
	oPlayer.rammo=oPlayer.rammo+2
	instance_destroy()
}

}
	
}




