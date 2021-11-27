!to find the value of x defined at y=10 from given sets of data using Lagrange interpolation technique
program prob3
implicit none
integer i,j
real yy,summ,prod
real x(4),y(4)
data x/5,6,9,11/
data y/12,13,14,16/
print*,'enter the value of y'
read*, yy

summ=0			!identity no. for sum
do i=1,4
	prod=1		!identity no. for product
	do j=1,4
	if (i.ne.j) then
	prod=prod*(yy-y(j))/(y(i)-y(j))
	endif
	enddo
summ=summ+prod*x(i)
enddo
print*,summ
end




