!To print the output of NAND gate 
program NANDg
implicit none
integer A,B
print*,'Give the input A'
read*, A
print*,'Give the input B'
read*, B

if (A .eq. B) then
	if (A .eq. 0) then
	print*, 'The output of NAND gate is 1'
	else
	print*,'The output of NAND gate is 0'
	endif
else
	print*, 'The output of NAND gate is 1'
endif
end
