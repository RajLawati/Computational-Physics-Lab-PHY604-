!to find the roots of f(x)=x-cosx using Newton-Raphson method
program fun1
implicit none
double precision x,f,df,delta,error		!here f is function, df is the derivative of function
double precision, parameter:: tol=5.d-4	!here d refers exponential
print*, 'give initial value x'
read*, x

5 f=x-cos(x)		!here 5 is stack point
df=1+sin(x)
delta=-f/df
x=x+delta
error=abs(delta)/x		
if (error .gt. tol) goto 5
print*, x
end




