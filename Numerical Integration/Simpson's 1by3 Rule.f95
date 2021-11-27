!to find the integration of f(x)=1-x**3 using Simpson's 1/3 rule
program inte3
implicit none
integer i,j,n
double precision a,b,h,f,x,x1,x2,Area,A1,A2,error

print*,'enter the value of n-segments' 		!here n should be even
read*, n
print*,'enter the value of a and b' 
read*, a,b

h=(b-a)/n
A1=0
A2=0

do i=1,n,2		!for odd terms
x1=a+i*h
A1=A1+4*f(x1)
enddo

do j=0,n,2		!for even terms
x2=a+j*h
A2=A2+2*f(x2)
enddo

Area=(A1+A2)*(h/3.d0)
error=abs((Area-0.75)/0.75)*100
print*, Area, error
end


double precision function f(x)
double precision x
f=(1-x**3)
end function






