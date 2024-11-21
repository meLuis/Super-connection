var game =instance_create_layer(x,y,"Instances_3",oGame)
xsp=0
ysp=0

zone =0

global.px=x
global.py=y

wall=0

wt=0

//movement speed
vel=2
//max speed
mxsp=4
//Time on air, corelates with jump height
j=0
jt=16
//wether you are jumping
jumping=0
//gravity 
g=0.1
//delta time, used in downwards acceleration
dt=0
//the uneven distance to ground due to acceleration
dis=0
//object you are above
ground=0
//checks if jump buton is pressed
jbutton=0
//checks if you are stuk in geometry
stuck=0
sh=0
sv=0

crouch=0

canwall=0

inwall=0

hwall=0

rchange=0
rt=0

//checks the weapon you are holding
weapon=-1
//firing rate of the projectile
frate=0
//the projectile deppendng on the weapon 
projectile=0
//used in conjunction to tell time between shots
ftimer=0

//Weapons (checks if you have them equipped)
baster=0
global.blasterp=0
rocket=0
sword=0
ray=0

display=0

r=0
rammo=0
rmax=0

//bullet spawn position
bulletx=0
bullety=0

global.door=0

//health
hp=1
maxhp=1
hurt=0

cx=0
cy=0

//Input buttons
right = vk_right
left= vk_left
top=vk_up
down=vk_down
up=vk_space
fire= ord("X")
select= ord("C")
map = ord("M")

mp=0

//var torso =instance_create_layer(x,y,"Instances_2",oTorso)
var arms =instance_create_layer(x,y,"Instances_2",oArms)
var legs =instance_create_layer(x,y,"Instances_2",oLeg)