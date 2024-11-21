hp=-1
immortal=0
mhp=5

t=0

hor=x
ver=y
if global.door=1{

instance_create_layer(x,y,"Instances",oDoor)
instance_destroy()

}
