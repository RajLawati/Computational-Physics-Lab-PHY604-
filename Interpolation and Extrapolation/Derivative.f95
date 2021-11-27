!to print the derivative and its error of a function when increment(h) changes by 0.1
program Derivative
implicit none
integer i
real(8) x,f,h,df,error
print*, 'enter the value of x'
read*, x

h=1.d0
do i=1,10
h=h*0.1		!increment h changes by 0.1
df=(f(x+h)-f(x))/h	!derivative of given function
error=df-(3*(x**2))	!error in the derivative
print*, h,df,error
enddo
end

real (8) function f(x)
real (8) x
f=x**3
end function



