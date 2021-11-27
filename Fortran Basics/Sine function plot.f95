!to plot the graph of sine function creating data
program funplot
implicit none
integer i,j,z
real x,pi,y
pi=4.*atan(1.)
print*,'enter the no. of cycle of sinx'
read*,j
z=360*j
open (5, file='funplot.dat')
do i=0,z,5		!here i is the angle in degree
x=(pi/180)*i
y=sin(x)
write(5,*) i,y		!this saves the calculated data in dat file
print*, i,y		!this print the output in terminal
enddo
end




