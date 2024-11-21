if room=a1r1{
posx=3
posy=2		
}
if room=a1r2{
posx=7
posy=2		
}
if room=a1r3{
posx=9
posy=2		
}
if room=a1r4{
posx=4
posy=4		
}
if room=a1r5{
posx=4
posy=5		
}
if room=a1r6{
posx=2
posy=2		
}
if room=a1r7{
posx=0
posy=2		
}
if room=a1r8{
posx=0
posy=1		
}
if room=a1r9{
posx=0
posy=0		
}
if room=a1r10{
posx=5
posy=0		
}
if room=a1r11{
posx=11
posy=1	
}
if room=a1r12{
posx=5
posy=1		
}
if room=a1r13{
posx=8
posy=3	
}

x=posx+(round((global.px-128)/256))
y=posy+(round((global.py-112)/256))

if t<20{
t++	
	
}else{
t=0	
f=f+1	
}

if f>1{
f=0
	
}
