!program prime
!implicit none
integer m(500)
j=0
do 10 n=100,999
	do k=2, n/2
		if (mod(n,k)==0) goto 10
		enddo
		j=j+1
		m(j)=n
	10 continue
	print*,'List of prime numbers 100 t0 999:'
	write(6,20)(m(i),i=1,j)
20 format (3x,5i7/)
stop
end
