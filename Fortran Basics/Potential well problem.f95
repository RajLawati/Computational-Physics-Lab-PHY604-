!To print the potential of quantum well system
program pot_well
implicit none
integer x,a
real n,h,m,v,E
print*,'Enter the value of distance(x)'
read*, x
print*,'Enter the value of number(n)'
read*, n
m=9.10*10**(-31)
h=6.62*10**(-34)
do a=0,10,1
enddo
if (x .le. 0) then
	print*, ' The potential is infinity'
	E=(n*h*x)/m
	print*, 'The energy of the system is', E
elseif (x .lt. 10) then
	print*, 'The potential is -Vo'
	print*, 'Enter the value of potential'
	read*,v
	E=-((n*h*x)**2)/(2*m*v)
	print*, 'The energy of the system is', E
else
	print*, ' The potential is infinity'
	E=(n*h*x)/m
	print*, 'The energy of the system is', E
endif
end
