!to find the value of integration of f(x)=cos**2(x)+1 in the limit 0 to pie using random variables (Monte-carlo Integration)
program monte
implicit none
integer i,n
real(8) x,a,b,summ,Inte,f

print*, 'enter the value of n'
read*, n

a=0
b=4*atan(1.)		!b = value of pie

summ=0
do i=1,n
call random_number(x)		!x=random number
x=a+(b-a)*x
summ=summ+f(x)
enddo
Inte=((b-a)*summ)/n		!integration formula
print*, Inte
end


real(8) function f(x)
real(8) x
f=cos(x)*cos(x)+1
end function




