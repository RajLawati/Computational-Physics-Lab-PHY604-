!to find the values of intensity at different tempt and wavelength of black-body and plot intensity versus wavelength spectrum 
program plank
implicit none 
real(8) l,h,c,T,KB,B	!l=wavelength, B=intensity,T=Tempt

!constant values
h=6.62E-34		!Planck's constant
 c=3E8			!speed of light
KB=1.38E-23		!Boltzmann constant

!At Tempt=3000 K
open(10,file='B1.dat')
l=-49.9E-9
do
l=l+50E-9
T=3000
write(10,*) l,B(l,T,c,h,KB)
If (l.gt.2000E-9) exit
enddo

!At Tempt=4000 K
open(11,file='B2.dat')
l=-49.9E-9
do
l=l+50E-9
T=4000
write(11,*) l,B(l,T,c,h,KB)
If (l.gt.2000E-9) exit
enddo

!At Tempt=5000 K
open(12,file='B3.dat')
l=-49.9E-9
do
l=l+50E-9
T=5000
write(12,*) l,B(l,T,c,h,KB)
If (l.gt.2000E-9) exit
enddo

!At Tempt=6000 K
open(13,file='B4.dat')
l=-49.9E-9
do
l=l+50E-9
T=6000
write(13,*) l,B(l,T,c,h,KB)
If (l.gt.2000E-9) exit
enddo

!At Tempt=7000 K
open(14,file='B5.dat')
l=-49.9E-9
do
l=l+50E-9
T=7000
write(14,*) l,B(l,T,c,h,KB)
If (l.gt.2000E-9) exit
enddo
end program


real(8) function B(l,T,c,h,KB)
real(8) l,T,c,h,KB
B=(2.*h*(c**2))/((exp((h*c)/(l*KB*T))-1)*(l**5))
end function




