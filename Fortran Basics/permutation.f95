!to make factorial function and use it to find the permutation and combination
program permutation
implicit none
integer i,j,factorial
real p,c 		!here p is permutation and c is combination
print*,'enter two numbers'
read*, i,j
p=factorial(i)/factorial(i-j)
c=p/factorial(j)
print*, 'The permutation is',p,'and combination is',c
end


integer function factorial(n)		!it find the factorial
integer i,n
factorial=1
do i=1,n
factorial=factorial*i
enddo 
end function



