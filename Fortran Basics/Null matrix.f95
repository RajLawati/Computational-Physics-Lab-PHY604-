!to print the 3x3 null matrix using do loops 
program nullmatrix
implicit none
integer i,j, a(3,3)
a=0
do i=1,3
do j=1,3
a(i,i)=0		!here diagonal element is made 0, we can create unit matrix by putting 1
enddo
print*, a(i,:)
enddo
end
