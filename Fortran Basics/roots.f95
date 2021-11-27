!To find the nature and roots of a quadratic equation
program roots
implicit none 

real::a,b,c,D,x1,x2
print*,'Enter the value of a'
read*, a
print*,'Enter the value of b'
read*, b
print*,'Enter the value of c'
read*, c

D=b**2-4*a*c
x1=(-b+sqrt(D))/(2*a)
x2=(-b-sqrt(D))/(2*a)

if (D .gt. 0) then
	print*, 'The roots are real and unequal',x1, 'and',x2
elseif (D .eq. 0) then
	print*, 'The roots are real and equal',x1, 'and', x2
else
	print*, 'The roots are complex',(-b)/(2*a),'+',sqrt(abs(D))/(2*a),'i'
	print*, 'and', (-b)/(2*a),'-',sqrt(abs(D))/(2*a),'i'
end if
end

