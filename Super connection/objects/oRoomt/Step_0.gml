
if place_meeting(x,y,oPlayer){
	
	if x<room_width/2{
		if oPlayer.xsp<0{
			oPlayer.rchange=1
			
			
		}
	}
	if x>room_width/2{
		if oPlayer.xsp>0{
			oPlayer.rchange=1
			
			
		}
	}
	if y<room_height/2{
		if oPlayer.ysp<0{
			oPlayer.rchange=1
			
			
		}
	}
	if y>room_height/2{
		if oPlayer.ysp>0{
			oPlayer.rchange=1
			
			
		}	
	}
	
	if oPlayer.rt=15{
		
			oPlayer.x=targetx
			oPlayer.y=targety
			oArms.x=targetx
			oArms.y=targety
			oLeg.x=targetx
			oLeg.y=targety
			room_goto(targetr)
	}
}




