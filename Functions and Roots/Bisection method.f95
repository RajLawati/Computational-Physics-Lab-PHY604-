!to find the roots of f(x)=x-cosx using bisection method
program eqn
implicit none
integer i
double precision a,b,m,f,e,x 		!m is the midpoint, e is the error

5 print*,'enter the value of interval'
read*, a,b


if (f(a)*f(b) .gt. 0) then 
	print*, '**Given interval is not valid**'	
	goto 5
else 
	do i=1,50
	m=(a+b)/2
	!print*, a,m,b
	if (f(m) .gt. 0) then
	b=m
	else
	a=m
	endif
	e=abs((a-b)/m)
	if (e .eq. 1E-10) exit
	enddo
	print*, 'The roots is',m	
endif
end



double precision function f(x)
double precision x
f=x-cos(x)
end function



