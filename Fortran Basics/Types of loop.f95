!to print the multiplication table using counting do loop
program multtable
implicit none
integer i,a
print*,'enter the number'
read*, a
do i=1,10
print*, a,'x',i,'=', a*i
enddo
!end
print*,''

!to print the multiplication table using general do loop
!program multtable
!implicit none
!integer i,a
i=1
do
if (i .gt. 10) exit
print*, a,'x',i,'=', a*i
i=i+1
enddo
!end
print*,''

!to print the multiplication table using continue
!program multtable
!implicit none
!integer i,a
i=1
do i=1,10
print*, a,'x',i,'=', a*i
enddo
continue
!end
print*,''

!to print the multiplication table using goto
!program multtable
!implicit none
!integer i,a
i=0
11 i=i+1		
print*, a,'x',i,'=', a*i
if (i .lt. 10) goto 11		!here 11 is called stack point
!end
print*,''

!to print the multiplication table using do while
!program multtable
!implicit none
!integer i,a
i=0
do while (i .lt. 10) 
i=i+1
print*, a,'x',i,'=', a*i
enddo
!end
print*,''

!to print the multiplication table using cycle
!program multtable
!implicit none
!integer i,a
i=0
do i=1,10
if (i .eq. 3) cycle 		!cycle exclude the multiplication for 3	
print*, a,'x',i,'=', a*i
enddo
end


