!to find the sum and product of two vectors
program vectoralgebra
implicit none
integer,dimension(3)::f,g,s
integer:: p
print*,'enter the three components of vector f'
read*,f
print*,'enter the three components of vector g'
read*,g
s=f+g
p=f(1)*g(1)+f(2)*g(2)+f(3)*g(3)
print*, 'The sum of vectors are',s(1),'i','+',s(2),'j','+',s(3),'k'
print*, 'The product of vectors are',p
end 
