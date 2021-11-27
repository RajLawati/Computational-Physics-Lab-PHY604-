!to solve the tridiagonal linear system of equations (page 103, Paul L. Devris book)
program tridiag
implicit none
integer i,j,k,n
real b(5), a(5), c(5), x(5), r(5), beta(5), rho(5) 	!here 5 refers to 5 sets of equations
data b/2,2,2,2,2/
data a/0,-1,-1,-1,-1/
data c/-1,-1,-1,-1,0/
data r/0,1,2,3,4/

beta(1)=b(1)
rho(1)=r(1)

do j=2,5
beta(j)=b(j)-(a(j)/beta(j-1))*c(j-1)
rho(j)=r(j)-(a(j)/beta(j-1))*rho(j-1)
!print*, beta(j), rho(j)
enddo

x(5)=rho(5)/beta(5)
print*,'The value of x5 is',x(5)

do j=1,4
n=5
x(n-j)=(rho(n-j)-c(n-j)*x(n-j+1))/beta(n-j)
print*,'The value of x',n-j,'is',x(n-j)
enddo

end






