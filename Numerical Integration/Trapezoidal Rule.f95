!to find the integration of f(x)=x**3 in the limit of 0 to 1 using trapezoidal rule
program integration1
implicit none
integer i,n
real(8) a,b,h,f,avg,area,error,x1
print*, 'enter value of n'	
read*, i

a=0
b=1

do n=1,i-1 			!n refers to n segments of area
h=(b-a)/n
x1=a+n*h
avg=(f(a)+f(b))/2.d0
area=(avg+f(x1))*h		!integration is the area under the curve
error=abs((area-0.25)/0.25)*100
print*, i,area,error
enddo
end



real(8) function f(x)
real(8) x
f=x**3
end function




