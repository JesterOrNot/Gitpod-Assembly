helloGas:
	gcc -c -o helloGas.o helloAsm.s \
	&& ld -o helloGas helloGas.o \
	&& ./helloGas
.PHONY: helloGas
clean:
	rm -rf *.o
.PHONY: clean
