!to estimate the value of y(1) for h=0.1, y(0)=1 in given DE y'=x+y**2 using Euler's method
program ODE
implicit none
integer i
real(8),dimension(20):: x,y
real(8) h,f

x(1)=0
y(1)=1
h=0.1
i=0
do 
i=i+1
x(i+1)=x(i)+h
y(i+1)=y(i)+h*f(x(i),y(i))		!Euler's method from Taylor's expansion
if (x(i-1) .gt. 1.0) exit 		
print*, x(i),y(i)			
enddo
end


real(8) function f(x,y)
real(8) x,y
f=x+(y**2)		!derivative or slope of function
end function



