!to find the integration of f(x)=1-x**3 using Simpson's 3/8 rule
program inte
implicit none
integer i,j,n
double precision a,b,h,f,x,x1,x2,x3,Area,A1,A2,error

print*,'enter the value of n-segments' 		!here n should be even
read*, n
print*,'enter the value of a and b' 
read*, a,b

h=(b-a)/n
A1=0
A2=0

do i=2,n-1,3		!for odd terms
x1=a+i*h
x2=a+(i+1)*h
A1=A1+3*(f(x1)+f(x2))
enddo

do j=4,n-2,3		!for even terms
x3=a+j*h
A2=A2+2*f(x3)
enddo

Area=(f(a)+f(b)+A1+A2)*(3*h/8.d0)
error=abs((Area-0.75)/0.75)*100
print*, Area, error
end


double precision function f(x)
double precision x
f=(1-x**3)
end function






