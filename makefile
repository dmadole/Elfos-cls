
cls.bin: cls.asm include/bios.inc include/kernel.inc
	asm02 -b -L cls.asm

clean:
	-rm -f *.bin *.lst

