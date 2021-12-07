!to estimate the value of y(1) for h=0.1 and y(0)=1 in given DE y'=x+y**2 using Runge-Kutta method
program Runge
implicit none
integer i
real(8) h,f,k,k1,k2,k3,k4
real(8),dimension(20) :: x,y

x(1)=0
y(1)=1
h=0.1
i=0
do 
i=i+1
k1=h*f(x(i),y(i))
k2=h*f(x(i)+h/2,y(i)+k1/2)
k3=h*f(x(i)+h/2,y(i)+k2/2)
k4=h*f(x(i)+h,y(i)+k3)
k=(k1+2*k2+2*k3+k4)/6.d0
y(i+1)=y(i)+k
x(i+1)=x(i)+h
If (x(i-1) .gt. 1.0) exit
print*, x(i),y(i)	
enddo
end


real(8) function f(x,y)
real(8) x,y
f=x+(y**2)		!derivative	
end function




 
