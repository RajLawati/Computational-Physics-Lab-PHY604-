!To find the factorial of a number
program fact
implicit none
integer x,a,i
print*, 'Enter your number'
read*,a
x=1
do i=1,a
x=x*i
enddo
write(*,1) a ,x
1 format ('The factorial of',I3,1x,'is',I10)
end
