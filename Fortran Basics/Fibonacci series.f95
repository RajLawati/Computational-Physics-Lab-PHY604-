!To lists the fibonacci sequence and save in dat file
program fibo
implicit none
integer x,y,z,i
open (unit=1, file='fibo.dat')		!format to save output in dat file
x=0
y=1
print*,x
print*,y
do i = 1,20
z=x+y 
x=y
y=z
print*, z
write(1,*) z			!to save output in dat file
enddo
end




