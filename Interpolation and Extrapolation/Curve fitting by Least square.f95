!to find the value of slope(m) and c of best fit from given set of data of Thermistor experiment
program thermistor
implicit none
integer i,n
real T(16),R(16),x(16),y(16),sumx,sumy,sumxy,sumx2,m,c		!T is tempt, R is resistance

sumx=0
sumy=0
sumxy=0
sumx2=0
n=16
open (10,file='thermistor.dat')	!here thermistor.dat is experimental T,R data
open (11,file='thermistorXY.dat')	!here thermistorXY.dat is best fit variable x,y data
do i=1,16
read(10,*) T(i), R(i)
x(i)=1./T(i)
y(i)=log(1./R(i))

write(11,*) x(i), y(i) 

sumx=sumx+x(i)
sumy=sumy+y(i)
sumxy=sumxy+x(i)*y(i)
sumx2=sumx2+x(i)**2
enddo 

m=(n*sumxy-sumx*sumy)/(n*sumx2-sumx**2)
 c=(sumy-m*sumx)/n

print*, m,c
end



