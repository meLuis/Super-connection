//if oPlayer.zone!=0{

x= oPlayer.x 
y=oPlayer.y-16 

image_angle = point_direction(oGoal.x,oGoal.y,x,y)+180

//}

if oPlayer.mp=1 {
	image_alpha=1;
	}else{
		image_alpha=0;
		}