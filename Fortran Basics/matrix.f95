!to study the properties of matrix
program matrix
implicit none
integer,dimension(2,2)::a,b	!here (2,2) refers the size of matrix
real det		
print*,'enter the elements of matrix'
read*,a
print*,a	!to display the matrix in array form
b=transpose(a)	
print*,b	!to display the transpose in array form
print*,b(2,1)	!to display the element of transpose
print*,a(1,1)		!to display the element of matrix
print*,a(1,1),a(1,2)		!to display all the elements of matrix
print*,a(2,1),a(2,2)
det=abs(a(1,1)*a(2,2)-a(1,2)*a(2,1))	!to find the determinant of the matrix
print*,det
print*,a(1,1)/det,a(2,1)/det		!to display the inverse matrix
print*,a(1,2)/det,a(2,2)/det
end
