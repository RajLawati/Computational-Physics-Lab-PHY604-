!to find the charging and discharging voltage of capacitor and plot its graph
program capacitor
implicit none
integer t		!t stands for charging/discharging time
real R,C,Vo,Vc,Vdc	!Vo is max voltage, Vc is charging voltage, Vdc is discharging voltage
R=500000		!resistance in ohm
 C=8E-6			!capacitance in F
Vo=12			
open (5,file='capacitor.dat')
do t=0,90,2
Vc=Vo*(1-exp(-t/(R*C)))
Vdc=Vo-Vc
write(5,*) t,Vc,Vdc
enddo
end






