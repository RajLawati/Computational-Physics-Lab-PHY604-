!To convert the given temperature
program cf
implicit none
integer x
real c,f,k

print*, 'Enter the digit'
print*, '1 for Celcius to Fahrenheit and Kelvin' 
print*, '2 for Fahrenheit to Celcius and Kelvin'
read*,x

if (x .eq. 1) then 
	print*, 'Enter the temperature in Celcius'
	read*,c
	f=(9./5)*c+32
	k=c+273
	print*, 'The temperature in Fahrenheit is',f
	print*, 'The temperature in Kelvin is',k

elseif (x .eq. 2) then 
	print*, 'Enter the temperature in Fahrenheit'
	read*,f
 	c=(5./9)*(f-32)
 	k=(5./9)*(f-32)+273
	print*, 'The temperature in Celsius is',c
	print*, 'The temperature in Kelvin is',k
else
print*, 'Invalid digit'
endif
end
